# set preview
execute if entity @s[advancements={main:triggers/settings/preview_map={map_1_lc=true}}] run scoreboard players set @s preview 1
execute if entity @s[advancements={main:triggers/settings/preview_map={map_1_rc=true}}] run scoreboard players set @s preview 1
execute if entity @s[advancements={main:triggers/settings/preview_map={map_2_lc=true}}] run scoreboard players set @s preview 2
execute if entity @s[advancements={main:triggers/settings/preview_map={map_2_rc=true}}] run scoreboard players set @s preview 2
execute if entity @s[advancements={main:triggers/settings/preview_map={map_3_lc=true}}] run scoreboard players set @s preview 3
execute if entity @s[advancements={main:triggers/settings/preview_map={map_3_rc=true}}] run scoreboard players set @s preview 3

advancement revoke @s only main:triggers/settings/preview_map
playsound minecraft:ui.button.click block @s
execute if score @s preview matches 2.. run tellraw @s [{"text":"[Console] "},{"text":"You can't preview a map that doesn't exist!","color":"red"}]
execute if score @s preview matches 2.. run return run scoreboard players reset @s preview
gamemode spectator @s

# teleport
execute if score @s preview matches 1 run function c:tp/map_1
execute if score @s preview matches 2 run function c:tp/map_2
execute if score @s preview matches 3 run function c:tp/map_3
