execute unless entity @s[tag=within_setting_board_boundries] run return run advancement revoke @s only main:triggers/settings/game/round_timer
execute if score .game data matches 0.. if function main:message/settings/locked run return run advancement revoke @s only main:triggers/settings/game/round_timer

# console log
execute unless score .modify_round_timer settings matches -1 run tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"round_timer","color":"gray"},{"text":" to "},{"score":{"name":".round_timer","objective":"settings"},"color":"green"},{"text":" click","color":"gray"}]

# toggle round_timer
execute unless score .modify_round_timer settings matches -1 run scoreboard players operation .modify_round_timer settings = .round_timer settings
execute if score .modify_round_timer settings matches 1.. run scoreboard players set .round_timer settings 0
execute if score .modify_round_timer settings matches 0 run scoreboard players set .round_timer settings 1
scoreboard players reset .modify_round_timer settings

# save last updater
tag @s add modifiedSetting
data merge entity @e[type=text_display,tag=setting.game.round_timer-updater,limit=1] {text:'[{"text":""},{"text":" ","strikethrough":true,"color":"gray"},{"text":" "},{"selector":"@p[tag=modifiedSetting]"},{"text":"\\n                         "}]'}
data modify storage main:settings setting.game.round_timer.last_updater_id set from entity @s UUID
data modify storage main:settings setting.game.round_timer.last_updater_name set from entity @e[type=text_display,tag=setting.game.round_timer-updater,limit=1] text
data remove entity @e[type=item_display,tag=setting.game.round_timer-updater,limit=1] item.components.minecraft:profile
data modify entity @e[type=item_display,tag=setting.game.round_timer-updater,limit=1] item.components.minecraft:profile.id set from storage main:settings setting.game.round_timer.last_updater_id
tag @s remove modifiedSetting

# update settings board
execute as @e[type=text_display,tag=setting.game.round_timer] if score .round_timer settings matches 1.. run data merge entity @s {text:'[{"translate":"setting.purple.button.round_timer.name","fallback":"Hide Round Timer? %s","with":[["",{"translate":"setting.purple.button.no","fallback":"No","color":"red"}]]},{"strikethrough":true,"text":"\\n                                  ","color":"dark_gray"}]'}
execute as @e[type=text_display,tag=setting.game.round_timer] if score .round_timer settings matches ..0 run data merge entity @s {text:'[{"translate":"setting.purple.button.round_timer.name","fallback":"Hide Round Timer? %s","with":[["",{"translate":"setting.purple.button.yes","fallback":"Yes","color":"green"}]]},{"strikethrough":true,"text":"\\n                                  ","color":"dark_gray"}]'}


# clean up
playsound minecraft:ui.button.click block @s
advancement revoke @s only main:triggers/settings/game/round_timer
