from django.shortcuts import render, redirect, get_object_or_404
from django.contrib import messages
from .forms import UserRegisterForm, UserUpdateForm, ProfileUpdateForm
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.views.generic import ListView, DetailView
from matches.models import Settings
from django.contrib.auth.mixins import LoginRequiredMixin, UserPassesTestMixin
from .models import Profile, Notification, Follower

# Create your views here.


def register(request):
    if request.method == 'POST':
        form = UserRegisterForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            messages.success(request, f'Your account has been created! You are now able to log in!')
            return redirect('login')
    else:
        form = UserRegisterForm()
    return render(request, 'accounts/register.html', {'form': form})


@login_required
def profile(request):
    if request.method == 'POST':
        u_form = UserUpdateForm(request.POST, instance=request.user)
        p_form = ProfileUpdateForm(request.POST, request.FILES, instance=request.user.profile)

        if u_form.is_valid() and p_form.is_valid():
            u_form.save()
            p_form.save()
            messages.success(request, f'Your account has been updated!')
            return redirect('profile')
    else:
        u_form = UserUpdateForm(instance=request.user)
        p_form = ProfileUpdateForm(instance=request.user.profile)

    context = {
        'u_form': u_form,
        'p_form': p_form
    }
    return render(request, 'accounts/profile.html', context)


class SearchListView(ListView):
    template_name = 'accounts/search.html'
    model = User
    context_object_name = 'users'
    paginate_by = 10

    def get_paginate_by(self, queryset):
        settings = Settings.objects.get(pk=1)
        paginate_by = settings.num_of_objects_per_page
        return paginate_by

    def get_queryset(self):
        if self.request.GET:
            if self.request.GET['q']:
                return User.objects.filter(username__contains=self.request.GET['q'])
            return render(self.request, 'accounts/search.html')
        return render(self.request, 'accounts/search.html')

    def get_context_data(self, **kwargs):
        context = super(SearchListView, self).get_context_data(**kwargs)
        context['following'] = []
        if self.request.user.is_authenticated:
            context['following'] = Follower.objects.filter(follower=self.request.user).values_list('id', flat=True)
        return context


class LeaderboardListView(ListView):
    template_name = 'accounts/leaderboard.html'
    model = Profile
    context_object_name = 'profiles'

    def get_queryset(self):
        return Profile.objects.all().order_by("-coin")


class NotificationsListView(LoginRequiredMixin, ListView):
    template_name = 'accounts/notifications.html'
    model = Notification
    context_object_name = 'notifications'

    def get_queryset(self):
        notfs = Notification.objects.filter(user=self.request.user).order_by('-date')
        for notf in notfs:
            notf.is_seen = True
            notf.save()
        return notfs


@login_required
def Follow(request, username):
    user = get_object_or_404(User, username=username)
    follower = request.user
    Follower.objects.create(user=user, follower=follower)
    return redirect('user-bets', username)
