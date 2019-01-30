from django.shortcuts import render, redirect, get_object_or_404
from django.contrib import messages
from .forms import UserRegisterForm, UserUpdateForm, ProfileUpdateForm, MessageForm
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.views.generic import ListView, DetailView
from matches.models import Settings
from django.contrib.auth.mixins import LoginRequiredMixin, UserPassesTestMixin
from .models import Profile, Notification, Follower, Message
from django.core.exceptions import ObjectDoesNotExist

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
            if self.request.GET:
                return User.objects.filter(username__contains=self.request.GET.get('q'))
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
        notfs2 = notfs
        for notf in notfs:
            notf.is_seen = True
            notf.save()
        return notfs2


@login_required
def Follow(request, username):
    user = get_object_or_404(User, username=username)
    follower = request.user
    Follower.objects.create(user=user, follower=follower)
    return redirect('user-bets', username)


class Inbox(LoginRequiredMixin, ListView):
    template_name = 'accounts/inbox.html'
    model = Message
    context_object_name = 'meses'

    def get_queryset(self):
        return Message.objects.filter(receiver=self.request.user).order_by('-date')


@login_required
def new_message(request, receiver_id):
    if request.method == 'POST':
        form = MessageForm(request.POST)
        if form.is_valid():
            pr = form.save(commit=False)
            receiver = get_object_or_404(User, pk=receiver_id)
            pr.sender = request.user
            pr.receiver = receiver
            pr.save()
            return redirect('inbox')
    else:
        message_title = ""
        message_text = ""
        if request.GET:
            if request.GET.get('message_id'):
                message_id = request.GET.get('message_id')
                try:
                    message_id = int(message_id)
                except ValueError:
                    message_id = False

                if isinstance(message_id, int):
                    try:
                        message = Message.objects.get(pk=message_id)
                    except ObjectDoesNotExist:
                        message = False
                    if message:
                        message_title = message.title
                        message_text = message.text

        form = MessageForm(initial={'title': message_title, 'text': message_text})
        receiver = get_object_or_404(User, pk=receiver_id)
        return render(request, 'accounts/new_message.html', {'form': form, 'receiver': receiver})


class ReadMessage(LoginRequiredMixin, UserPassesTestMixin, DetailView):
    model = Message
    template_name = 'accounts/message_read.html'

    def test_func(self):
        message = Message.objects.get(pk=self.kwargs['pk'])
        if self.request.user == message.receiver:
            return True
        else:
            return False

    def get_object(self, queryset=None):
        message = Message.objects.get(pk=self.kwargs['pk'])
        message.is_seen = 1
        message.save()
        return message
