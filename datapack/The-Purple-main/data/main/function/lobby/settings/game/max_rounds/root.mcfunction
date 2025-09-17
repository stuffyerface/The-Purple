execute unless entity @s[tag=within_setting_board_boundries] run return run advancement revoke @s only main:triggers/settings/game/max_rounds
execute if score .game data matches 0.. if function main:message/settings/locked run return run advancement revoke @s only main:triggers/settings/game/max_rounds

# modify setting
execute if entity @s[advancements={main:triggers/settings/game/max_rounds={right_click=true}}] run function main:lobby/settings/game/max_rounds/detect/right_click
execute if entity @s[advancements={main:triggers/settings/game/max_rounds={left_click=true}}] run function main:lobby/settings/game/max_rounds/detect/left_click
execute if entity @s[advancements={main:triggers/settings/game/max_rounds={shift_right_click=true}}] run function main:lobby/settings/game/max_rounds/detect/shift_right_click
execute if entity @s[advancements={main:triggers/settings/game/max_rounds={shift_left_click=true}}] run function main:lobby/settings/game/max_rounds/detect/shift_left_click
execute store result bossbar main:time max run scoreboard players get .max_rounds settings

# check last updater
tag @s add modifiedSetting
data merge entity @e[type=text_display,tag=setting.game.max_rounds-updater,limit=1] {text:[{"text":""},{"text":" ","strikethrough":true,"color":"gray"},{"text":" "},{"selector":"@p[tag=modifiedSetting]"},{"text":"\n                         "}]}
data modify storage main:settings setting.game.max_rounds.last_updater_id set from entity @s UUID
data modify storage main:settings setting.game.max_rounds.last_updater_name set from entity @e[type=text_display,tag=setting.game.max_rounds-updater,limit=1] text
data remove entity @e[type=item_display,tag=setting.game.max_rounds-updater,limit=1] item.components.minecraft:profile
data modify entity @e[type=item_display,tag=setting.game.max_rounds-updater,limit=1] item.components.minecraft:profile.id set from storage main:settings setting.game.max_rounds.last_updater_id
tag @s remove modifiedSetting

# update settings board
execute as @e[type=text_display,tag=setting.game.max_rounds] if score .max_rounds settings matches 0 run data merge entity @s {text:[{"translate":"setting.purple.button.max_rounds.name","fallback":"Max Rounds: %s","with":[["",{"translate":"setting.purple.button.off","fallback":"Off","color":"red"}]]},{"strikethrough":true,"text":"\n                                  ","color":"dark_gray"}]}
execute as @e[type=text_display,tag=setting.game.max_rounds] if score .max_rounds settings matches 1.. run data merge entity @s {text:[{"translate":"setting.purple.button.max_rounds.name","fallback":"Max Rounds: %s","with":[["",{"score":{"objective":"settings","name":".max_rounds"},"color":"green"}]]},{"strikethrough":true,"text":"\n                                  ","color":"dark_gray"}]}

# clean up
playsound minecraft:ui.button.click block @s
advancement revoke @s only main:triggers/settings/game/max_rounds
