execute unless entity @s[tag=within_setting_board_boundries] run return run advancement revoke @s only main:triggers/settings/game/offline_time
execute if score .game data matches 0.. if function main:message/settings/locked run return run advancement revoke @s only main:triggers/settings/game/offline_time

# modify setting
execute if entity @s[advancements={main:triggers/settings/game/offline_time={right_click=true}}] run function main:lobby/settings/game/offline_time/detect/right_click
execute if entity @s[advancements={main:triggers/settings/game/offline_time={left_click=true}}] run function main:lobby/settings/game/offline_time/detect/left_click
execute if entity @s[advancements={main:triggers/settings/game/offline_time={shift_right_click=true}}] run function main:lobby/settings/game/offline_time/detect/shift_right_click
execute if entity @s[advancements={main:triggers/settings/game/offline_time={shift_left_click=true}}] run function main:lobby/settings/game/offline_time/detect/shift_left_click

# save last updater
tag @s add modifiedSetting
data merge entity @e[type=text_display,tag=setting.game.offline_time-updater,limit=1] {text:[{"text":""},{"text":" ","strikethrough":true,"color":"gray"},{"text":" "},{"selector":"@p[tag=modifiedSetting]"},{"text":"\n                         "}]}
data modify storage main:settings setting.game.offline_time.last_updater_id set from entity @s UUID
data modify storage main:settings setting.game.offline_time.last_updater_name set from entity @e[type=text_display,tag=setting.game.offline_time-updater,limit=1] text
data remove entity @e[type=item_display,tag=setting.game.offline_time-updater,limit=1] item.components.minecraft:profile
data modify entity @e[type=item_display,tag=setting.game.offline_time-updater,limit=1] item.components.minecraft:profile.id set from storage main:settings setting.game.offline_time.last_updater_id
tag @s remove modifiedSetting

# update settings board
execute as @e[type=text_display,tag=setting.game.offline_time] run data merge entity @s {text:[{"translate":"setting.purple.button.offline_time.name","fallback":"Offline Time: %s","with":[["",{"score":{"objective":"settings","name":".offline_time"},"color":"green"}," ",{"translate":"setting.purple.button.ticks","fallback":"ticks"}]]},{"strikethrough":true,"text":"\n                                  ","color":"dark_gray"}]}

# clean up
playsound minecraft:ui.button.click block @s
advancement revoke @s only main:triggers/settings/game/offline_time
