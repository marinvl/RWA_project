from django.shortcuts import render, redirect
from django.contrib import messages
from .forms import UserRegisterForm, UserUpdateForm, ProfileUpdateForm
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.views.generic import ListView
from matches.models import Settings

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
