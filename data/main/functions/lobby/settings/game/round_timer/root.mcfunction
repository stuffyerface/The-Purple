# toggle round_timer
scoreboard players operation .modify_round_timer settings = .round_timer settings
execute if score .modify_round_timer settings matches 1.. run scoreboard players set .round_timer settings 0
execute if score .modify_round_timer settings matches ..0 run scoreboard players set .round_timer settings 1
scoreboard players reset .modify_round_timer settings

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"round_timer","color":"gray"},{"text":" to "},{"score":{"name":".round_timer","objective":"settings"},"color":"green"},{"text":" left_click","color":"gray"}]

# save last updater
tag @s add modifiedSetting
data merge entity @e[type=text_display,tag=setting.game.round_timer-updater,limit=1] {text:'[{"text":""},{"text":" ","strikethrough":true,"color":"gray"},{"text":" "},{"selector":"@p[tag=modifiedSetting]"},{"text":"\\n                         "}]'}
data modify storage main:settings setting.game[].round_timer.last_updater_id set from entity @s UUID
data modify storage main:settings setting.game[].round_timer.last_updater_name set from entity @e[type=text_display,tag=setting.game.round_timer-updater,limit=1] text
data remove entity @e[type=item_display,tag=setting.game.round_timer-updater,limit=1] item.components.minecraft:profile
data modify entity @e[type=item_display,tag=setting.game.round_timer-updater,limit=1] item.components.minecraft:profile.id set from storage main:settings setting.game[].round_timer.last_updater_id
tag @s remove modifiedSetting

# update settings board
execute as @e[type=text_display,tag=setting.game.round_timer] if score .round_timer settings matches 1.. run data merge entity @s {text:'[{"text":"Hide Round Timer? "},{"text":"No","color":"red"},{"strikethrough":true,"text":"\\n                                ","color":"dark_gray"}]'}
execute as @e[type=text_display,tag=setting.game.round_timer] if score .round_timer settings matches ..0 run data merge entity @s {text:'[{"text":"Hide Round Timer? "},{"text":"Yes","color":"green"},{"strikethrough":true,"text":"\\n                                ","color":"dark_gray"}]'}


# clean up
playsound minecraft:ui.button.click block @s
advancement revoke @s only main:triggers/settings/game/round_timer
