execute unless entity @s[tag=within_setting_board_boundries] run return run advancement revoke @s only main:triggers/settings/game/reduce_timer
execute if score .game data matches 0.. if function main:message/settings/locked run return run advancement revoke @s only main:triggers/settings/game/reduce_timer

# modify setting
execute if entity @s[advancements={main:triggers/settings/game/reduce_timer={right_click=true}}] run function main:lobby/settings/game/reduce_timer/detect/right_click
execute if entity @s[advancements={main:triggers/settings/game/reduce_timer={left_click=true}}] run function main:lobby/settings/game/reduce_timer/detect/left_click
execute if entity @s[advancements={main:triggers/settings/game/reduce_timer={shift_right_click=true}}] run function main:lobby/settings/game/reduce_timer/detect/shift_right_click
execute if entity @s[advancements={main:triggers/settings/game/reduce_timer={shift_left_click=true}}] run function main:lobby/settings/game/reduce_timer/detect/shift_left_click

# check last updater
tag @s add modifiedSetting
data merge entity @e[type=text_display,tag=setting.game.reduce_timer-updater,limit=1] {text:[{"text":""},{"text":" ","strikethrough":true,"color":"gray"},{"text":" "},{"selector":"@p[tag=modifiedSetting]"},{"text":"\n                         "}]}
data modify storage main:settings setting.game.reduce_timer.last_updater_id set from entity @s UUID
data modify storage main:settings setting.game.reduce_timer.last_updater_name set from entity @e[type=text_display,tag=setting.game.reduce_timer-updater,limit=1] text
data remove entity @e[type=item_display,tag=setting.game.reduce_timer-updater,limit=1] item.components.minecraft:profile
data modify entity @e[type=item_display,tag=setting.game.reduce_timer-updater,limit=1] item.components.minecraft:profile.id set from storage main:settings setting.game.reduce_timer.last_updater_id
tag @s remove modifiedSetting

# update settings board
execute if score .reduce_timer settings matches 1.. as @e[type=text_display,tag=setting.game.reduce_timer] run data merge entity @s {text:[{"translate":"setting.purple.button.reduce_timer.name","fallback":"Reduce Timer: %s","with":[["",{"score":{"objective":"settings","name":".reduce_timer"},"color":"green"},{"translate":"setting.purple.button.percent","fallback":"%"}]]},{"strikethrough":true,"text":"\n                                  ","color":"dark_gray"}]}
execute if score .reduce_timer settings matches ..0 as @e[type=text_display,tag=setting.game.reduce_timer] run data merge entity @s {text:[{"translate":"setting.purple.button.reduce_timer.name","fallback":"Reduce Timer: %s","with":[["",{"translate":"setting.purple.button.off","fallback":"Off","color":"red"}]]},{"strikethrough":true,"text":"\n                                  ","color":"dark_gray"}]}

# clean up
playsound minecraft:ui.button.click block @s
advancement revoke @s only main:triggers/settings/game/reduce_timer
