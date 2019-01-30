"""DotaBet URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from accounts import views as user_views
from django.contrib.auth import views as auth_views
from django.conf import settings
from django.conf.urls.static import static
from background.views import api, gameOver, paycheck, getHeroes, getItems

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('matches.urls')),

    path('register/', user_views.register, name="register"),
    path('login/', auth_views.LoginView.as_view(template_name='accounts/login.html'), name="login"),
    path('logout/', auth_views.LogoutView.as_view(template_name='accounts/logout.html'), name="logout"),
    path('profile/', user_views.profile, name="profile"),
    path('search', user_views.SearchListView.as_view(), name="search"),
    path('leaderboard/', user_views.LeaderboardListView.as_view(), name="leaderboard"),
    path('notifications/', user_views.NotificationsListView.as_view(), name='notifications'),
    path('see_notifications/<int:notification_id>/', user_views.SeeNotification, name='see-notification'),
    path('follow/<str:username>/', user_views.Follow, name='follow'),
    path('unfollow/<str:username>/', user_views.Unfollow, name='unfollow'),
    path('messages/', user_views.Inbox.as_view(), name='inbox'),
    path('new_message/<int:receiver_id>/', user_views.new_message, name='new-message'),
    path('read_message/<int:pk>/', user_views.ReadMessage.as_view(), name='read-message'),

]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

#getItems()
#getHeroes()
api(repeat=30, repeat_until=None)
gameOver(repeat=60, repeat_until=None)
paycheck(repeat=300, repeat_until=None)
