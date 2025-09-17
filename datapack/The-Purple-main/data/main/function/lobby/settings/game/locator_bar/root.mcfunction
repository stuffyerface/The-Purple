execute unless entity @s[tag=within_setting_board_boundries] run return run advancement revoke @s only main:triggers/settings/game/locator_bar
execute if score .game data matches 0.. if function main:message/settings/locked run return run advancement revoke @s only main:triggers/settings/game/locator_bar

# modify setting
execute if entity @s[advancements={main:triggers/settings/game/locator_bar={right_click=true}}] run function main:lobby/settings/game/locator_bar/detect/right_click
execute if entity @s[advancements={main:triggers/settings/game/locator_bar={left_click=true}}] run function main:lobby/settings/game/locator_bar/detect/left_click
execute if entity @s[advancements={main:triggers/settings/game/locator_bar={shift_right_click=true}}] run function main:lobby/settings/game/locator_bar/detect/shift_right_click
execute if entity @s[advancements={main:triggers/settings/game/locator_bar={shift_left_click=true}}] run function main:lobby/settings/game/locator_bar/detect/shift_left_click
execute store result bossbar main:time max run scoreboard players get .locator_bar settings

# check last updater
tag @s add modifiedSetting
data merge entity @e[type=text_display,tag=setting.game.locator_bar-updater,limit=1] {text:[{"text":""},{"text":" ","strikethrough":true,"color":"gray"},{"text":" "},{"selector":"@p[tag=modifiedSetting]"},{"text":"\n                         "}]}
data modify storage main:settings setting.game.locator_bar.last_updater_id set from entity @s UUID
data modify storage main:settings setting.game.locator_bar.last_updater_name set from entity @e[type=text_display,tag=setting.game.locator_bar-updater,limit=1] text
data remove entity @e[type=item_display,tag=setting.game.locator_bar-updater,limit=1] item.components.minecraft:profile
data modify entity @e[type=item_display,tag=setting.game.locator_bar-updater,limit=1] item.components.minecraft:profile.id set from storage main:settings setting.game.locator_bar.last_updater_id
tag @s remove modifiedSetting

# update settings board
execute as @e[type=text_display,tag=setting.game.locator_bar] if score .locator_bar settings matches 0 run data merge entity @s {text:[{"translate":"setting.purple.button.locator_bar.name","fallback":"Locator Bar: %s","with":[["",{"translate":"setting.purple.button.never","fallback":"Never","color":"red"}]]},{"strikethrough":true,"text":"\n                                  ","color":"dark_gray"}]}
execute as @e[type=text_display,tag=setting.game.locator_bar] if score .locator_bar settings matches 1 run data merge entity @s {text:[{"translate":"setting.purple.button.locator_bar.name","fallback":"Locator Bar: %s","with":[["",{"translate":"setting.purple.button.always","fallback":"Always","color":"green"}]]},{"strikethrough":true,"text":"\n                                  ","color":"dark_gray"}]}
execute as @e[type=text_display,tag=setting.game.locator_bar] if score .locator_bar settings matches 2.. run data merge entity @s {text:[{"translate":"setting.purple.button.locator_bar.name","fallback":"Locator Bar: %s","with":[["",{"translate":"setting.purple.button.round","fallback":"Round"}," ",{"score":{"objective":"settings","name":".locator_bar"},"color":"green"},{"translate":"setting.purple.button.plus","fallback":"+"}]]},{"strikethrough":true,"text":"\n                                  ","color":"dark_gray"}]}

# clean up
playsound minecraft:ui.button.click block @s
advancement revoke @s only main:triggers/settings/game/locator_bar
