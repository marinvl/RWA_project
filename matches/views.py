from django.shortcuts import render, get_object_or_404, redirect
from django.views.generic import ListView, CreateView, DetailView, DeleteView
from django.contrib import messages
from django.contrib.auth.mixins import LoginRequiredMixin, UserPassesTestMixin
from .models import Bet, Match, Settings, Stats, Pick, Ban, Item_Inventory
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required
from django.core.exceptions import ObjectDoesNotExist
from datetime import datetime, timedelta
from django.utils import timezone
from accounts.models import Notification, Follower

# Create your views here.


class MatchListView(ListView):
    model = Match
    template_name = 'matches/index.html'
    context_object_name = 'matches'

    def get_queryset(self):
        time_threshold = timezone.now() - timedelta(minutes=2)
        return Match.objects.filter(date__gt=time_threshold)


@login_required
def make_bet(request):
    match_id = request.GET['match_id']
    if request.GET['match_id'] and request.GET['result'] and request.GET['coin']:
        match_id = request.GET['match_id']
        result = request.GET['result']
        coins = request.GET['coin']

        try:
            coins = int(coins)
        except Exception as e:
            messages.warning(request, f'Please input an integer')
            return redirect('match-details', match_id)

        if coins <= 0:
            messages.warning(request, f'Please input a number bigger than 0')
            return redirect('match-details', match_id)

        cnt = Bet.objects.filter(match=Match.objects.get(match_id=match_id), user=request.user.id)
        if cnt.count() > 0:
            messages.warning(request, f'You have already made bet on this match!')
            return redirect('match-details', match_id)

        if request.user.profile.coin < coins:
            messages.warning(request, f'You don\'t have enough coins!')
            return redirect('match-details', match_id)

        request.user.profile.coin -= coins
        request.user.profile.save()

        bet = Bet.objects.create(user=request.user, match=Match.objects.get(match_id=match_id), result=result, coin=coins)
        messages.success(request, f'Your bet has been made!')

        followers = Follower.objects.filter(user=request.user)
        for follower in followers:
            Notification.objects.create(user=follower.follower, text=request.user.username + " made a bet on match " + bet.match.r_team.team_name + " - " + bet.match.d_team.team_name)
    else:
        messages.warning(request, f'There has been an error making your bet!')

    return redirect('match-details', match_id)


class UserBetListView(ListView):
    model = Bet
    template_name = 'matches/user_bets.html'
    context_object_name = 'bets'
    paginate_by = 10

    def get_paginate_by(self, queryset):
        settings = Settings.objects.get(pk=1)
        paginate_by = settings.num_of_objects_per_page
        return paginate_by

    def get_queryset(self):
        user = get_object_or_404(User, username=self.kwargs.get('username'))
        return Bet.objects.filter(user=user).order_by('-date')

    def get_context_data(self, **kwargs):
        user = get_object_or_404(User, username=self.kwargs.get('username'))
        context = super(UserBetListView, self).get_context_data(**kwargs)
        context['tags'] = user.profile.image.url
        context['last10'] = Bet.objects.filter(user=user).order_by('-date')[:10]
        context['current'] = user.profile.coin
        context['currentUser'] = user
        context['following'] = []
        if self.request.user.is_authenticated:
            context['following'] = Follower.objects.filter(follower=self.request.user).values_list('user_id', flat=True)
        return context


class MatchDetailView(DetailView):
    model = Match

    def get_context_data(self, **kwargs):
        context = super(MatchDetailView, self).get_context_data(**kwargs)
        context['stats'] = Stats.objects.filter(match_id=self.kwargs['pk']).order_by('-net_worth')
        context['rpicks'] = Pick.objects.filter(match_id=self.kwargs['pk'], side=0).order_by('slot')
        context['rbans'] = Ban.objects.filter(match_id=self.kwargs['pk'], side=0).order_by('slot')
        context['dpicks'] = Pick.objects.filter(match_id=self.kwargs['pk'], side=1).order_by('slot')
        context['dbans'] = Ban.objects.filter(match_id=self.kwargs['pk'], side=1).order_by('slot')
        context['items'] = Item_Inventory.objects.filter(match_id=self.kwargs['pk']).order_by('slot')
        return context


class BetDeleteView(LoginRequiredMixin, UserPassesTestMixin, DeleteView):
    model = Bet
    success_url = '/'

    def test_func(self):
        bet = self.get_object()
        if self.request.user == bet.user:
            bet.user.profile.coin += bet.coin*0.25
            bet.user.profile.save()
            return True
        return False

