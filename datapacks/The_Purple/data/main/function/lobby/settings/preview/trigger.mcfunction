execute unless entity @s[tag=within_setting_board_boundries] run return run advancement revoke @s only main:triggers/settings/preview_map
execute if score .game data matches 0.. run return run advancement revoke @s only main:triggers/settings/preview_map

# set preview
execute if entity @s[advancements={main:triggers/settings/preview_map={map_x_lc=true}}] run scoreboard players set @s preview 999
execute if entity @s[advancements={main:triggers/settings/preview_map={map_x_rc=true}}] run scoreboard players set @s preview 999
execute if entity @s[advancements={main:triggers/settings/preview_map={map_0_lc=true}}] run scoreboard players set @s preview 0
execute if entity @s[advancements={main:triggers/settings/preview_map={map_0_rc=true}}] run scoreboard players set @s preview 0
execute if entity @s[advancements={main:triggers/settings/preview_map={map_1_lc=true}}] run scoreboard players set @s preview 1
execute if entity @s[advancements={main:triggers/settings/preview_map={map_1_rc=true}}] run scoreboard players set @s preview 1
execute if entity @s[advancements={main:triggers/settings/preview_map={map_2_lc=true}}] run scoreboard players set @s preview 2
execute if entity @s[advancements={main:triggers/settings/preview_map={map_2_rc=true}}] run scoreboard players set @s preview 2
execute if entity @s[advancements={main:triggers/settings/preview_map={map_3_lc=true}}] run scoreboard players set @s preview 3
execute if entity @s[advancements={main:triggers/settings/preview_map={map_3_rc=true}}] run scoreboard players set @s preview 3

# clean up
playsound minecraft:ui.button.click block @s
advancement revoke @s only main:triggers/settings/preview_map

# cant preview
execute unless score @s preview matches 1..3 run scoreboard players set @s actionbar 30
execute if score @s preview matches ..0 run title @s actionbar {"color":"red","translate":"message.purple.preview.no","fallback":"You can't preview this map!"}
execute if score @s preview matches 4.. run title @s actionbar {"color":"red","translate":"message.purple.preview.missing","fallback":"This map isn't ready yet!"}
execute unless score @s preview matches 1..3 run return run scoreboard players reset @s preview

# teleport
gamemode spectator @s
execute if score @s preview matches 1 run function c:tp/map_1
execute if score @s preview matches 2 run function c:tp/map_2
execute if score @s preview matches 3 run function c:tp/map_3

# console log
tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"},{"text":" is now previewing map "},{"score":{"name":"@s","objective":"preview"}},"."]
