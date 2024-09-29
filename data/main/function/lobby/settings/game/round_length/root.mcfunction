execute unless entity @s[tag=within_setting_board_boundries] run return run advancement revoke @s only main:triggers/settings/game/round_length

# modify setting
execute if entity @s[advancements={main:triggers/settings/game/round_length={right_click=true}}] run function main:lobby/settings/game/round_length/detect/right_click
execute if entity @s[advancements={main:triggers/settings/game/round_length={left_click=true}}] run function main:lobby/settings/game/round_length/detect/left_click
execute if entity @s[advancements={main:triggers/settings/game/round_length={shift_right_click=true}}] run function main:lobby/settings/game/round_length/detect/shift_right_click
execute if entity @s[advancements={main:triggers/settings/game/round_length={shift_left_click=true}}] run function main:lobby/settings/game/round_length/detect/shift_left_click

# check last updater
tag @s add modifiedSetting
data merge entity @e[type=text_display,tag=setting.game.round_length-updater,limit=1] {text:'[{"text":""},{"text":" ","strikethrough":true,"color":"gray"},{"text":" "},{"selector":"@p[tag=modifiedSetting]"},{"text":"\\n                         "}]'}
data modify storage main:settings setting.game[].round_length.last_updater_id set from entity @s UUID
data modify storage main:settings setting.game[].round_length.last_updater_name set from entity @e[type=text_display,tag=setting.game.round_length-updater,limit=1] text
data remove entity @e[type=item_display,tag=setting.game.round_length-updater,limit=1] item.components.minecraft:profile
data modify entity @e[type=item_display,tag=setting.game.round_length-updater,limit=1] item.components.minecraft:profile.id set from storage main:settings setting.game[].round_length.last_updater_id
tag @s remove modifiedSetting

# update settings board
execute as @e[type=text_display,tag=setting.game.round_length] run data merge entity @s {text:'[{"text":"Round Length: "},{"color":"green","score":{"name":".round_length","objective":"settings"}},{"text":"s"},{"strikethrough":true,"text":"\\n                                ","color":"dark_gray"}]'}

# clean up
playsound minecraft:ui.button.click block @s
advancement revoke @s only main:triggers/settings/game/round_length

# set minutes & seconds
scoreboard players set .60 settings 60
scoreboard players operation .round_length_minutes settings = .round_length settings
scoreboard players operation .round_length_minutes settings /= .60 settings
scoreboard players operation .round_length_seconds settings = .round_length settings
execute if score .round_length_seconds settings matches 60.. run scoreboard players operation .round_length_seconds settings -= .60 settings
execute if score .round_length_seconds settings matches 60.. run scoreboard players operation .round_length_seconds settings -= .60 settings
execute if score .round_length_seconds settings matches 60.. run scoreboard players operation .round_length_seconds settings -= .60 settings
execute if score .round_length_seconds settings matches 60.. run scoreboard players operation .round_length_seconds settings -= .60 settings
execute if score .round_length_seconds settings matches 60.. run scoreboard players operation .round_length_seconds settings -= .60 settings
execute if score .round_length_seconds settings matches 60.. run scoreboard players operation .round_length_seconds settings -= .60 settings
execute if score .round_length_seconds settings matches 60.. run scoreboard players operation .round_length_seconds settings -= .60 settings
execute if score .round_length_seconds settings matches 60.. run scoreboard players operation .round_length_seconds settings -= .60 settings
execute if score .round_length_seconds settings matches 60.. run scoreboard players operation .round_length_seconds settings -= .60 settings
execute if score .round_length_seconds settings matches 60.. run scoreboard players operation .round_length_seconds settings -= .60 settings
scoreboard players reset .60 settings