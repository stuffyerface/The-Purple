execute unless entity @s[tag=within_setting_board_boundries] run return run advancement revoke @s only main:triggers/settings/game/rope_clicks
execute if score .game data matches 0.. if function main:message/settings/locked run return run advancement revoke @s only main:triggers/settings/game/rope_clicks

# modify setting
execute if entity @s[advancements={main:triggers/settings/game/rope_clicks={right_click=true}}] run function main:lobby/settings/game/rope_clicks/detect/right_click
execute if entity @s[advancements={main:triggers/settings/game/rope_clicks={left_click=true}}] run function main:lobby/settings/game/rope_clicks/detect/left_click
execute if entity @s[advancements={main:triggers/settings/game/rope_clicks={shift_right_click=true}}] run function main:lobby/settings/game/rope_clicks/detect/shift_right_click
execute if entity @s[advancements={main:triggers/settings/game/rope_clicks={shift_left_click=true}}] run function main:lobby/settings/game/rope_clicks/detect/shift_left_click

# save last updater
tag @s add modifiedSetting
data merge entity @e[type=text_display,tag=setting.game.rope_clicks-updater,limit=1] {text:[{"text":""},{"text":" ","strikethrough":true,"color":"gray"},{"text":" "},{"selector":"@p[tag=modifiedSetting]"},{"text":"\n                         "}]}
data modify storage main:settings setting.game.rope_clicks.last_updater_id set from entity @s UUID
data modify storage main:settings setting.game.rope_clicks.last_updater_name set from entity @e[type=text_display,tag=setting.game.rope_clicks-updater,limit=1] text
data remove entity @e[type=item_display,tag=setting.game.rope_clicks-updater,limit=1] item.components.minecraft:profile
data modify entity @e[type=item_display,tag=setting.game.rope_clicks-updater,limit=1] item.components.minecraft:profile.id set from storage main:settings setting.game.rope_clicks.last_updater_id
tag @s remove modifiedSetting

# update settings board
execute as @e[type=text_display,tag=setting.game.rope_clicks] run data merge entity @s {text:[{"translate":"setting.purple.button.rope_clicks.name","fallback":"Rope Clicks: %s","with":[["",{"score":{"objective":"settings","name":".rope_clicks"},"color":"green"}]]},{"strikethrough":true,"text":"\n                                  ","color":"dark_gray"}]}

# clean up
playsound minecraft:ui.button.click block @s
advancement revoke @s only main:triggers/settings/game/rope_clicks
