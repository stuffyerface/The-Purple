execute unless entity @s[tag=within_setting_board_boundries] run return run advancement revoke @s only main:triggers/settings/game/players_ready_percent
execute if score .game data matches 0.. if function main:message/settings/locked run return run advancement revoke @s only main:triggers/settings/game/players_ready_percent

# modify setting
execute if entity @s[advancements={main:triggers/settings/game/players_ready_percent={right_click=true}}] run function main:lobby/settings/game/players_ready_percent/detect/right_click
execute if entity @s[advancements={main:triggers/settings/game/players_ready_percent={left_click=true}}] run function main:lobby/settings/game/players_ready_percent/detect/left_click
execute if entity @s[advancements={main:triggers/settings/game/players_ready_percent={shift_right_click=true}}] run function main:lobby/settings/game/players_ready_percent/detect/shift_right_click
execute if entity @s[advancements={main:triggers/settings/game/players_ready_percent={shift_left_click=true}}] run function main:lobby/settings/game/players_ready_percent/detect/shift_left_click
function main:game/tag/function/check_required

# check last updater
tag @s add modifiedSetting
data merge entity @e[type=text_display,tag=setting.game.players_ready_percent-updater,limit=1] {text:[{"text":""},{"text":" ","strikethrough":true,"color":"gray"},{"text":" "},{"selector":"@p[tag=modifiedSetting]"},{"text":"\n                         "}]}
data modify storage main:settings setting.game.players_ready_percent.last_updater_id set from entity @s UUID
data modify storage main:settings setting.game.players_ready_percent.last_updater_name set from entity @e[type=text_display,tag=setting.game.players_ready_percent-updater,limit=1] text
data remove entity @e[type=item_display,tag=setting.game.players_ready_percent-updater,limit=1] item.components.minecraft:profile
data modify entity @e[type=item_display,tag=setting.game.players_ready_percent-updater,limit=1] item.components.minecraft:profile.id set from storage main:settings setting.game.players_ready_percent.last_updater_id
tag @s remove modifiedSetting

# update settings board
execute as @e[type=text_display,tag=setting.game.players_ready_percent] run data merge entity @s {text:[{"translate":"setting.purple.button.players_ready_percent.name","fallback":"Players Ready: %s","with":[["",{"score":{"objective":"settings","name":".players_ready_percent"},"color":"green"},{"translate":"setting.purple.button.percent","fallback":"%"}]]},{"strikethrough":true,"text":"\n                                  ","color":"dark_gray"}]}

# clean up
playsound minecraft:ui.button.click block @s
advancement revoke @s only main:triggers/settings/game/players_ready_percent
