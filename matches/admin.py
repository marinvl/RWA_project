from django.contrib import admin
from .models import Match, Bet, Settings, Player, Team, Item, Hero

# Register your models here.

admin.site.register(Match)
admin.site.register(Bet)
admin.site.register(Settings)
admin.site.register(Player)
admin.site.register(Team)
admin.site.register(Hero)
admin.site.register(Item)
