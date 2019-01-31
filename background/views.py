from background_task import background
import dota2api
from django.utils import timezone
from matches.models import Match, Bet, Player, Team, Stats, Hero, Item, Pick, Item_Inventory, Ban
from accounts.models import Notification
from math import floor

# -*- coding: utf-8 -*-

# Create your views here.


@background(schedule=5)
def api():

    api = dota2api.Initialise("F92426FF6096299606F88D87F7B2D0AD")

    matches = api.get_live_league_games()

    date_var = timezone.now()

    for game in matches['games']:
        players = game.get('players')
        radiant_team = game.get('radiant_team')
        dire_team = game.get('dire_team')
        scoreboard = game.get('scoreboard')

        match_id = game.get('match_id')
        series_type = game.get('series_type')
        radiant_wins = game.get('radiant_series_wins')
        dire_wins = game.get('dire_series_wins')

        if dire_team is not None and radiant_team is not None:

            r_team = radiant_team.get('team_name')
            d_team = dire_team.get('team_name')
            rid_team = radiant_team.get('team_id')
            did_team = dire_team.get('team_id')
            hero_acc = {}

            #print("Team1: " + str(rid_team) + "    " + r_team)
            (rTeam, rbool) = Team.objects.update_or_create(team_id=rid_team, defaults={'team_name': r_team}, )
            #print("Team1: " + str(did_team) + "    " + d_team)
            (dTeam, dBoll) = Team.objects.update_or_create(team_id=did_team, defaults={'team_name': d_team}, )

            for player in players:
                account_id = player.get('account_id')
                username = player.get('name')
                hero_id = player.get('hero_id')
                team = player.get('team')

                hero_acc[str(hero_id)] = account_id   

                #print("Player: " + str(account_id) + "    " + username + "    " + str(team))
                if team == 0:
                    Player.objects.update_or_create(player_id=account_id,
                        defaults={'player_name': username, 'team': rTeam},)
                if team == 1:
                    Player.objects.update_or_create(player_id=account_id,
                        defaults={'player_name': username, 'team': dTeam},)

            match_id = game.get('match_id')
            spectators = game.get('spectators')

            if scoreboard is not None:
                radiant = scoreboard.get('radiant')
                dire = scoreboard.get('dire')

                duration = scoreboard.get('duration')
                roshan_respawn_timer = scoreboard.get('roshan_respawn_timer')

                if radiant is not None and dire is not None:

                    r_bans = radiant.get('bans')
                    d_bans = dire.get('bans')

                    r_picks = radiant.get('picks')
                    d_picks = dire.get('picks')

                    r_score = radiant.get('score')
                    d_score = dire.get('score')

                    r_tower_state = radiant.get('tower_state')
                    d_tower_state = dire.get('tower_state')

                    r_barracks_state = radiant.get('barracks_state')
                    d_barracks_state = dire.get('barracks_state')

                    #print("Match: " + str(match_id) + "    " + str(rid_team) + "    " + str(did_team) + "    " +
                    #  str(spectators) + "    " + str(series_type) + "    " + str(radiant_wins) + "    " +
                    #  str(dire_wins) + "    " + str(duration) + "    " + str(roshan_respawn_timer) + "    "+
                    #  str(r_score) + "    " + str(d_score) + "    " + str(r_tower_state) + "    " +
                    #  str(d_tower_state) + "    " + str(r_barracks_state) + "    " + str(d_barracks_state))

                    (match, mBool) = Match.objects.update_or_create(match_id=match_id,
                       defaults={'r_team': rTeam, 'd_team': dTeam, 'spectator': spectators,
                                 'series_type': series_type, 'r_wins': radiant_wins, 'd_wins': dire_wins,
                                 'duration': duration, 'roshan_respawn_timer': roshan_respawn_timer, 'r_score': r_score,
                                 'd_score': d_score, 'r_tower_state': r_tower_state, 'd_tower_state': d_tower_state,
                                 'r_barracks_state': r_barracks_state, 'd_barracks_state': d_barracks_state, 'date': date_var, 'is_over': 0, 'winner': 0},)

                    if r_bans is not None and d_bans is not None:

                        for index, ban in enumerate(r_bans):
                            hero_id = ban.get('hero_id')
                            #print("R_Ban: " + str(match_id) + "    " + str(hero_id) + "    " + str(0))
                            hero = Hero.objects.get(pk=hero_id)
                            Ban.objects.update_or_create(match_id=match_id, hero=hero,
                               defaults={'side': 0, 'slot': index},)

                        for index, ban in enumerate(d_bans):
                            hero_id = ban.get('hero_id')
                            #print("D_Ban: " + str(match_id) + "    " + str(hero_id) + "    " + str(1))
                            hero = Hero.objects.get(pk=hero_id)
                            Ban.objects.update_or_create(match_id=match_id, hero=hero,
                               defaults={'side': 1, 'slot': index},)

                    if r_picks is not None and d_picks is not None:

                        for index, pick in enumerate(r_picks):
                            hero_id = pick.get('hero_id')
                            #print("R_Ban: " + str(match_id) + "    " + str(hero_id) + "    " + str(0))
                            hero = Hero.objects.get(pk=hero_id)
                            Pick.objects.update_or_create(match_id=match_id, hero=hero,
                               defaults={'side': 0, 'slot': index},)

                        for index, pick in enumerate(d_picks):
                            hero_id = pick.get('hero_id')
                            #print("D_Ban: " + str(match_id) + "    " + str(hero_id) + "    " + str(1))
                            hero = Hero.objects.get(pk=hero_id)
                            Pick.objects.update_or_create(match_id=match_id, hero=hero,
                               defaults={'side': 1, 'slot': index},)

                    r_picks = radiant.get('picks')
                    d_picks = dire.get('picks')

                    r_players = radiant.get('players')
                    d_players = dire.get('players')

                    for player in r_players:

                        account_id = player.get('account_id')
                        hero_id = player.get('hero_id')
                        kills = player.get('kills')
                        death = player.get('death')
                        assists = player.get('assists')
                        last_hits = player.get('last_hits')
                        denies = player.get('denies')
                        gold = player.get('gold')
                        level = player.get('level')
                        gpm = player.get('gold_per_min')
                        xpm = player.get('xp_per_min')
                        ultimate_cooldown = player.get('ultimate_cooldown')
                        respawn_timer = player.get('respawn_timer')
                        pos_x = player.get('position_x')
                        pos_y = player.get('position_y')
                        net_worth = player.get('net_worth')

                        Rplayer = Player.objects.get(pk=account_id)

                        hero = Hero.objects.get(pk=hero_id)

                        #print("\n\n\n\n\n\n" + str(Rplayer) + "\n\n\n\n\n\n")

                        #print("Stats: " + str(match_id) + "    " + str(account_id) + "    " + str(kills) + "    " +
                        #        str(death) + "    " + str(assists) + "    " + str(last_hits) + "    " + 
                        #        str(denies) + "    " + str(gold) + "    " + str(level) + "    " +
                        #        str(gpm) + "    " + str(xpm) + "    " + str(ultimate_cooldown) + "    " +
                        #        str(respawn_timer) + "    " + str(pos_x) + "    " + str(pos_y) + "    " + str(net_worth) + "    "  + str(0))

                        Stats.objects.update_or_create(match=match, player=Rplayer,
                           defaults={'hero_id': hero, 'kills': kills, 'death': death, 'assits': assists, 'last_hits': last_hits,
                                     'denies': denies, 'gold': gold, 'level': level, 'gpm': gpm, 'xpm': xpm,
                                     'ultimate_cooldown': ultimate_cooldown, 'respawn_timer': respawn_timer,
                                     'pos_x': pos_x, 'pos_y': pos_y, 'net_worth': net_worth, 'side': 0},)

                        item0 = player.get('item0')
                        item1 = player.get('item1')
                        item2 = player.get('item2')
                        item3 = player.get('item3')
                        item4 = player.get('item4')
                        item5 = player.get('item5')

                        #print("Item0: " + str(match_id) + "    " + str(account_id) + "    " + str(item0) + "    " + str(0))
                        item = Item.objects.get(pk=item0)
                        Item_Inventory.objects.update_or_create(match_id=match_id, player=Rplayer, slot=0, defaults={'item': item},)
                        #print("Item1: " + str(match_id) + "    " + str(account_id) + "    " + str(item1) + "    " + str(1))
                        item = Item.objects.get(pk=item1)
                        Item_Inventory.objects.update_or_create(match_id=match_id, player=Rplayer, slot=1, defaults={'item': item},)
                        #print("Item2: " + str(match_id) + "    " + str(account_id) + "    " + str(item2) + "    " + str(2))
                        item = Item.objects.get(pk=item2)
                        Item_Inventory.objects.update_or_create(match_id=match_id, player=Rplayer, slot=2, defaults={'item': item},)
                        #print("Item3: " + str(match_id) + "    " + str(account_id) + "    " + str(item3) + "    " + str(3))
                        item = Item.objects.get(pk=item3)
                        Item_Inventory.objects.update_or_create(match_id=match_id, player=Rplayer, slot=3, defaults={'item': item},)
                        #print("Item4: " + str(match_id) + "    " + str(account_id) + "    " + str(item4) + "    " + str(4))
                        item = Item.objects.get(pk=item4)
                        Item_Inventory.objects.update_or_create(match_id=match_id, player=Rplayer, slot=4, defaults={'item': item},)
                        #print("Item5: " + str(match_id) + "    " + str(account_id) + "    " + str(item5) + "    " + str(5))
                        item = Item.objects.get(pk=item5)
                        Item_Inventory.objects.update_or_create(match_id=match_id, player=Rplayer, slot=5, defaults={'item': item},)

                    for player in d_players:

                        account_id = player.get('account_id')
                        hero_id = player.get('hero_id')
                        kills = player.get('kills')
                        death = player.get('death')
                        assists = player.get('assists')
                        last_hits = player.get('last_hits')
                        denies = player.get('denies')
                        gold = player.get('gold')
                        level = player.get('level')
                        gpm = player.get('gold_per_min')
                        xpm = player.get('xp_per_min')
                        ultimate_cooldown = player.get('ultimate_cooldown')
                        respawn_timer = player.get('respawn_timer')
                        pos_x = player.get('position_x')
                        pos_y = player.get('position_y')
                        net_worth = player.get('net_worth')

                        Dplayer = Player.objects.get(pk=account_id)

                        hero = Hero.objects.get(pk=hero_id)

                        #print("Stats: " + str(match_id) + "    " + str(account_id) + "    " + str(kills) + "    " +
                        #        str(death) + "    " + str(assists) + "    " + str(last_hits) + "    " + 
                        #        str(denies) + "    " + str(gold) + "    " + str(level) + "    " +
                        #        str(gpm) + "    " + str(xpm) + "    " + str(ultimate_cooldown) + "    " +
                        #        str(respawn_timer) + "    " + str(pos_x) + "    " + str(pos_y) + "    " + str(net_worth) + "    "  + str(1))

                        Stats.objects.update_or_create(match=match, player=Dplayer,
                           defaults={'hero_id': hero, 'kills': kills, 'death': death, 'assits': assists, 'last_hits': last_hits,
                                     'denies': denies, 'gold': gold, 'level': level, 'gpm': gpm, 'xpm': xpm,
                                     'ultimate_cooldown': ultimate_cooldown, 'respawn_timer': respawn_timer,
                                     'pos_x': pos_x, 'pos_y': pos_y, 'net_worth': net_worth, 'side': 1},)

                        item0 = player.get('item0')
                        item1 = player.get('item1')
                        item2 = player.get('item2')
                        item3 = player.get('item3')
                        item4 = player.get('item4')
                        item5 = player.get('item5')

                        #print("Item0: " + str(match_id) + "    " + str(account_id) + "    " + str(item0) + "    " + str(0))
                        item = Item.objects.get(pk=item0)
                        Item_Inventory.objects.update_or_create(match_id=match_id, player=Dplayer, slot=0, defaults={'item': item},)
                        #print("Item1: " + str(match_id) + "    " + str(account_id) + "    " + str(item1) + "    " + str(1))
                        item = Item.objects.get(pk=item1)
                        Item_Inventory.objects.update_or_create(match_id=match_id, player=Dplayer, slot=1, defaults={'item': item},)
                        #print("Item2: " + str(match_id) + "    " + str(account_id) + "    " + str(item2) + "    " + str(2))
                        item = Item.objects.get(pk=item2)
                        Item_Inventory.objects.update_or_create(match_id=match_id, player=Dplayer, slot=2, defaults={'item': item},)
                        #print("Item3: " + str(match_id) + "    " + str(account_id) + "    " + str(item3) + "    " + str(3))
                        item = Item.objects.get(pk=item3)
                        Item_Inventory.objects.update_or_create(match_id=match_id, player=Dplayer, slot=3, defaults={'item': item},)
                        #print("Item4: " + str(match_id) + "    " + str(account_id) + "    " + str(item4) + "    " + str(4))
                        item = Item.objects.get(pk=item4)
                        Item_Inventory.objects.update_or_create(match_id=match_id, player=Dplayer, slot=4, defaults={'item': item},)
                        #print("Item5: " + str(match_id) + "    " + str(account_id) + "    " + str(item5) + "    " + str(5))
                        item = Item.objects.get(pk=item5)
                        Item_Inventory.objects.update_or_create(match_id=match_id, player=Dplayer, slot=5, defaults={'item': item},)
    print("API DONE")


@background(schedule=10)
def paycheck():
    print("PAYCHECK\n")
    date = timezone.now()
    non_payed_bets = Bet.objects.filter(is_payed=False)

    if non_payed_bets:
        for bet in non_payed_bets:
            if bet.is_payed is False and bet.match.winner != 0:
                bet.is_payed = True

                #print("Uso u bet " + str(floor(dt.seconds / 60)))
                #print("result: " + str(bet.result) + "  r_score: " + str(bet.match.r_score) + "  d_score: " + str(bet.match.d_score))
                if (bet.result == bet.match.winner):
                    #print("Pobjeda")
                    bet.user.profile.coin += bet.coin * 2
                    bet.user.profile.save()
                    Notification.objects.create(user=bet.user, text="You have won " + str(bet.coin*2) + " coins on match " + str(bet.match.r_team.team_name) + " - " + str(bet.match.d_team.team_name))
                else:
                    Notification.objects.create(user=bet.user, text="You have lost " + str(bet.coin) + " coins on match " + str(bet.match.r_team.team_name) + " - " + str(bet.match.d_team.team_name))
                bet.save()


@background(schedule=5)
def gameOver():
    date = timezone.now()
    non_over_matches = Match.objects.filter(winner=0)

    if non_over_matches:
        for match in non_over_matches:
            dt = date - match.date
            if floor(dt.seconds / 60) > 5:
                match.is_over = 1
                if match.r_score > match.d_score:
                    match.winner = 1
                else:
                    match.winner = 2
                match.save()
                print("GAMEOVER\n")


@background(schedule=5)
def getHeroes():
    api = dota2api.Initialise("F92426FF6096299606F88D87F7B2D0AD")
    heroes = api.get_heroes()

    for hero in heroes['heroes']:
        id = hero.get('id')
        name = hero.get('localized_name')
        print(str(id) + "    " + name)
        Hero.objects.create(hero_id=id, hero_name=name)


@background(schedule=5)
def getItems():
    api = dota2api.Initialise("F92426FF6096299606F88D87F7B2D0AD")
    items = api.get_game_items()

    for item in items['items']:
        id = item.get('id')
        name = item.get('localized_name')
        print(str(id) + "    " + name)
        Item.objects.create(item_id=id, item_name=name)
