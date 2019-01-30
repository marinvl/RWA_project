from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm
from .models import Profile, Message


class UserRegisterForm(UserCreationForm):
    email = forms.EmailField()

    class Meta:
        model = User
        fields = ['username', 'email', 'password1', 'password2']


class UserUpdateForm(forms.ModelForm):
    email = forms.EmailField()

    class Meta:
        model = User
        fields = ['username', 'email']


class ProfileUpdateForm(forms.ModelForm):
    class Meta:
        model = Profile
        fields = ['image']


class MessageForm(forms.ModelForm):
    #def __init__(self, **kwargs):
        #sender = kwargs.pop('sender', None)
        #receiver = kwargs.pop('receiver', None)
        #super(MessageForm, self).__init__(**kwargs)
        #self.fields['sender'].initial = sender[0]['sender']
        #self.fields['receiver'].initial = sender[0]['sender']

    """def save(self, commit=True):
        obj = super(MessageForm, self).save(commit=False)
        obj.sender = self.sender
        obj.receiver = self.receiver
        if commit:
            obj.save()
        return obj"""

    class Meta:
        model = Message
        fields = ['title', 'text']
