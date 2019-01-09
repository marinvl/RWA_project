from django.urls import path
from . import views
from .views import UserBetListView, MatchDetailView, MatchListView, BetDeleteView

urlpatterns = [
    path('', MatchListView.as_view(), name='matches-home'),
    path('user/<str:username>/', UserBetListView.as_view(), name='user-bets'),
    path('make_bet.html', views.make_bet, name='make-bet'),
    path('match/<int:pk>/', MatchDetailView.as_view(), name='match-details'),
    path('bet/<int:pk>/delete', BetDeleteView.as_view(), name='bet-delete'),
]
