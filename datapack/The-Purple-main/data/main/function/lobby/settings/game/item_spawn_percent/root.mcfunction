execute unless entity @s[tag=within_setting_board_boundries] run return run advancement revoke @s only main:triggers/settings/game/item_spawn_percent
execute if score .game data matches 0.. if function main:message/settings/locked run return run advancement revoke @s only main:triggers/settings/game/item_spawn_percent

# modify setting
execute if entity @s[advancements={main:triggers/settings/game/item_spawn_percent={right_click=true}}] run function main:lobby/settings/game/item_spawn_percent/detect/right_click
execute if entity @s[advancements={main:triggers/settings/game/item_spawn_percent={left_click=true}}] run function main:lobby/settings/game/item_spawn_percent/detect/left_click
execute if entity @s[advancements={main:triggers/settings/game/item_spawn_percent={shift_right_click=true}}] run function main:lobby/settings/game/item_spawn_percent/detect/shift_right_click
execute if entity @s[advancements={main:triggers/settings/game/item_spawn_percent={shift_left_click=true}}] run function main:lobby/settings/game/item_spawn_percent/detect/shift_left_click

# check last updater
tag @s add modifiedSetting
data merge entity @e[type=text_display,tag=setting.game.item_spawn_percent-updater,limit=1] {text:[{"text":""},{"text":" ","strikethrough":true,"color":"gray"},{"text":" "},{"selector":"@p[tag=modifiedSetting]"},{"text":"\n                         "}]}
data modify storage main:settings setting.game.item_spawn_percent.last_updater_id set from entity @s UUID
data modify storage main:settings setting.game.item_spawn_percent.last_updater_name set from entity @e[type=text_display,tag=setting.game.item_spawn_percent-updater,limit=1] text
data remove entity @e[type=item_display,tag=setting.game.item_spawn_percent-updater,limit=1] item.components.minecraft:profile
data modify entity @e[type=item_display,tag=setting.game.item_spawn_percent-updater,limit=1] item.components.minecraft:profile.id set from storage main:settings setting.game.item_spawn_percent.last_updater_id
tag @s remove modifiedSetting

# update settings board
execute as @e[type=text_display,tag=setting.game.item_spawn_percent] run data merge entity @s {text:[{"translate":"setting.purple.button.item_spawn_percent.name","fallback":"Item Spawn Chance: %s","with":[["",{"score":{"objective":"settings","name":".item_spawn_percent"},"color":"green"},{"translate":"setting.purple.button.percent","fallback":"%"}]]},{"strikethrough":true,"text":"\n                                  ","color":"dark_gray"}]}

# clean up
playsound minecraft:ui.button.click block @s
advancement revoke @s only main:triggers/settings/game/item_spawn_percent
