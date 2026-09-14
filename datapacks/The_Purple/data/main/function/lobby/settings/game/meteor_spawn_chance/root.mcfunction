execute unless entity @s[tag=within_setting_board_boundries] run return run advancement revoke @s only main:triggers/settings/game/meteor_spawn_chance
execute if score .game data matches 0.. if function main:message/settings/locked run return run advancement revoke @s only main:triggers/settings/game/meteor_spawn_chance

# modify setting
execute if entity @s[advancements={main:triggers/settings/game/meteor_spawn_chance={right_click=true}}] run function main:lobby/settings/game/meteor_spawn_chance/detect/right_click
execute if entity @s[advancements={main:triggers/settings/game/meteor_spawn_chance={left_click=true}}] run function main:lobby/settings/game/meteor_spawn_chance/detect/left_click
execute if entity @s[advancements={main:triggers/settings/game/meteor_spawn_chance={shift_right_click=true}}] run function main:lobby/settings/game/meteor_spawn_chance/detect/shift_right_click
execute if entity @s[advancements={main:triggers/settings/game/meteor_spawn_chance={shift_left_click=true}}] run function main:lobby/settings/game/meteor_spawn_chance/detect/shift_left_click

# check last updater
tag @s add modifiedSetting
data merge entity @e[type=text_display,tag=setting.game.meteor_spawn_chance-updater,limit=1] {text:[{"text":""},{"text":" ","strikethrough":true,"color":"gray"},{"text":" "},{"selector":"@p[tag=modifiedSetting]"},{"text":"\n                         "}]}
data modify storage main:settings setting.game.meteor_spawn_chance.last_updater_id set from entity @s UUID
data modify storage main:settings setting.game.meteor_spawn_chance.last_updater_name set from entity @e[type=text_display,tag=setting.game.meteor_spawn_chance-updater,limit=1] text
data remove entity @e[type=item_display,tag=setting.game.meteor_spawn_chance-updater,limit=1] item.components.minecraft:profile
data modify entity @e[type=item_display,tag=setting.game.meteor_spawn_chance-updater,limit=1] item.components.minecraft:profile.id set from storage main:settings setting.game.meteor_spawn_chance.last_updater_id
tag @s remove modifiedSetting

# update settings board
execute as @e[type=text_display,tag=setting.game.meteor_spawn_chance] run data merge entity @s {text:[{"translate":"setting.purple.button.meteor_spawn_chance.name","fallback":"Meteor Chance: %s","with":[["",{"score":{"objective":"settings","name":".meteor_spawn_chance"},"color":"green"},{"translate":"setting.purple.button.percent","fallback":"%"}]]},{"strikethrough":true,"text":"\n                                  ","color":"dark_gray"}]}

# clean up
playsound minecraft:ui.button.click block @s
advancement revoke @s only main:triggers/settings/game/meteor_spawn_chance
