execute unless entity @s[tag=within_setting_board_boundries] run return run advancement revoke @s only main:triggers/settings/game/starting_immunity
execute if score .game data matches 0.. if function main:message/settings/locked run return run advancement revoke @s only main:triggers/settings/game/starting_immunity

# modify setting
execute if entity @s[advancements={main:triggers/settings/game/starting_immunity={right_click=true}}] run function main:lobby/settings/game/starting_immunity/detect/right_click
execute if entity @s[advancements={main:triggers/settings/game/starting_immunity={left_click=true}}] run function main:lobby/settings/game/starting_immunity/detect/left_click
execute if entity @s[advancements={main:triggers/settings/game/starting_immunity={shift_right_click=true}}] run function main:lobby/settings/game/starting_immunity/detect/shift_right_click
execute if entity @s[advancements={main:triggers/settings/game/starting_immunity={shift_left_click=true}}] run function main:lobby/settings/game/starting_immunity/detect/shift_left_click

# save last updater
tag @s add modifiedSetting
data merge entity @e[type=text_display,tag=setting.game.starting_immunity-updater,limit=1] {text:[{"text":""},{"text":" ","strikethrough":true,"color":"gray"},{"text":" "},{"selector":"@p[tag=modifiedSetting]"},{"text":"\n                         "}]}
data modify storage main:settings setting.game.starting_immunity.last_updater_id set from entity @s UUID
data modify storage main:settings setting.game.starting_immunity.last_updater_name set from entity @e[type=text_display,tag=setting.game.starting_immunity-updater,limit=1] text
data remove entity @e[type=item_display,tag=setting.game.starting_immunity-updater,limit=1] item.components.minecraft:profile
data modify entity @e[type=item_display,tag=setting.game.starting_immunity-updater,limit=1] item.components.minecraft:profile.id set from storage main:settings setting.game.starting_immunity.last_updater_id
tag @s remove modifiedSetting

# update settings board
execute if score .starting_immunity settings matches 1.. as @e[type=text_display,tag=setting.game.starting_immunity] run data merge entity @s {text:[{"translate":"setting.purple.button.starting_immunity.name","fallback":"Starting Immunity: %s","with":[["",{"score":{"objective":"settings","name":".starting_immunity"},"color":"green"},{"translate":"setting.purple.button.seconds","fallback":"s"}]]},{"strikethrough":true,"text":"\n                                  ","color":"dark_gray"}]}
execute if score .starting_immunity settings matches ..0 as @e[type=text_display,tag=setting.game.starting_immunity] run data merge entity @s {text:[{"translate":"setting.purple.button.starting_immunity.name","fallback":"Starting Immunity: %s","with":[["",{"translate":"setting.purple.button.off","fallback":"Off","color":"red"}]]},{"strikethrough":true,"text":"\n                                  ","color":"dark_gray"}]}

# clean up
playsound minecraft:ui.button.click block @s
advancement revoke @s only main:triggers/settings/game/starting_immunity
