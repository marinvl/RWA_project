from django.db import models
from django.contrib.auth.models import User
from django.utils import timezone
import math

# Create your models here.


class Team(models.Model):
    team_id = models.IntegerField(primary_key=True)
    team_name = models.CharField(max_length=100)


class Match(models.Model):
    match_id = models.BigIntegerField(primary_key=True)
    r_team = models.ForeignKey(Team, on_delete=None, related_name='r_team')
    d_team = models.ForeignKey(Team, on_delete=None, related_name='d_team')

    spectator = models.IntegerField()
    series_type = models.IntegerField()
    r_wins = models.IntegerField()
    d_wins = models.IntegerField()
    duration = models.IntegerField()
    roshan_respawn_timer = models.IntegerField()
    r_score = models.IntegerField()
    d_score = models.IntegerField()
    r_tower_state = models.IntegerField()
    d_tower_state = models.IntegerField()
    r_barracks_state = models.IntegerField()
    d_barracks_state = models.IntegerField()
    is_over = models.IntegerField(default=0)
    winner = models.IntegerField(default=0)

    date = models.DateTimeField()

    def get_min(self):
        return math.floor(self.duration/60)

    def get_sec(self):
        return self.duration % 60


class Hero(models.Model):
    hero_id = models.IntegerField(primary_key=True)
    hero_name = models.CharField(max_length=100)
    url_full_portrait = models.URLField(default="null")
    url_small_portrait = models.URLField(default="null")
    url_large_portrait = models.URLField(default="null")
    url_vertical_portrait = models.URLField(default="null")


class Player(models.Model):
    player_id = models.BigIntegerField(primary_key=True)
    player_name = models.CharField(max_length=100)
    team = models.ForeignKey(Team, on_delete=None)


class Ban(models.Model):
    class Meta:
        unique_together = (('match', 'hero'),)

    match = models.ForeignKey(Match, on_delete=models.CASCADE)
    hero = models.ForeignKey(Hero, on_delete=None)
    side = models.IntegerField()
    slot = models.IntegerField()


class Pick(models.Model):
    class Meta:
        unique_together = (('match', 'hero'),)

    match = models.ForeignKey(Match, on_delete=models.CASCADE)
    hero = models.ForeignKey(Hero, on_delete=None)
    side = models.IntegerField()
    slot = models.IntegerField()


class Item(models.Model):
    item_id = models.IntegerField(primary_key=True)
    item_name = models.CharField(max_length=100)
    url_image = models.URLField(default="null")


class Item_Inventory(models.Model):
    class Meta:
        unique_together = (('match', 'player', 'slot'),)

    match = models.ForeignKey(Match, on_delete=None)
    player = models.ForeignKey(Player, on_delete=None)
    item = models.ForeignKey(Item, on_delete=None)
    slot = models.IntegerField()


class Stats(models.Model):
    class Meta:
        unique_together = (('match', 'player'),)

    match = models.ForeignKey(Match, on_delete=None)
    player = models.ForeignKey(Player, on_delete=None)
    hero_id = models.ForeignKey(Hero, on_delete=None)
    kills = models.IntegerField()
    death = models.IntegerField()
    assits = models.IntegerField()
    last_hits = models.IntegerField()
    denies = models.IntegerField()
    gold = models.IntegerField()
    level = models.IntegerField()
    gpm = models.IntegerField()
    xpm = models.IntegerField()
    ultimate_cooldown = models.IntegerField()
    respawn_timer = models.IntegerField()
    pos_x = models.FloatField()
    pos_y = models.FloatField()
    net_worth = models.IntegerField()
    side = models.IntegerField()


class Bet(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    match = models.ForeignKey(Match, on_delete=models.CASCADE)
    result = models.IntegerField()
    coin = models.IntegerField()
    is_payed = models.BooleanField(default=False)
    date = models.DateTimeField(default=timezone.now)


class Settings(models.Model):
    num_of_objects_per_page = models.IntegerField()
