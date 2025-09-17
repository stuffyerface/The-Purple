scoreboard players set @s actionbar 30
execute if entity @p[tag=player,tag=!corrupted,gamemode=!spectator,distance=..25] run return run title @s actionbar [{"color":"green","translate":"message.purple.spectator_ability.activated","fallback":"Spectator Ability %s activated!","with":[{"translate":"item.purple.spectator_ability.speed","fallback":"Speed Burst","color":"white"}]}]
title @s actionbar [{"translate":"message.purple.spectator_ability.no_players","fallback":"No players nearby!","color":"red"}]
scoreboard players set @s spectator_ability_timer 1
