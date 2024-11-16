execute unless entity @s[tag=within_setting_board_boundries] run return run advancement revoke @s only main:triggers/settings/game/double_tap
execute if score .game data matches 0.. if function main:message/settings/locked run return run advancement revoke @s only main:triggers/settings/game/double_tap

# modify setting
execute if entity @s[advancements={main:triggers/settings/game/double_tap={right_click=true}}] run function main:lobby/settings/game/double_tap/detect/right_click
execute if entity @s[advancements={main:triggers/settings/game/double_tap={left_click=true}}] run function main:lobby/settings/game/double_tap/detect/left_click

# save last updater
tag @s add modifiedSetting
data merge entity @e[type=text_display,tag=setting.game.double_tap-updater,limit=1] {text:'[{"text":""},{"text":" ","strikethrough":true,"color":"gray"},{"text":" "},{"selector":"@p[tag=modifiedSetting]"},{"text":"\\n                         "}]'}
data modify storage main:settings setting.game.double_tap.last_updater_id set from entity @s UUID
data modify storage main:settings setting.game.double_tap.last_updater_name set from entity @e[type=text_display,tag=setting.game.double_tap-updater,limit=1] text
data remove entity @e[type=item_display,tag=setting.game.double_tap-updater,limit=1] item.components.minecraft:profile
data modify entity @e[type=item_display,tag=setting.game.double_tap-updater,limit=1] item.components.minecraft:profile.id set from storage main:settings setting.game.double_tap.last_updater_id
tag @s remove modifiedSetting

# update settings board
execute as @e[type=text_display,tag=setting.game.double_tap] if score .double_tap settings matches 1 run data merge entity @s {text:'[{"translate":"setting.purple.button.double_tap.name","fallback":"Double Tap? %s","with":[["",{"translate":"setting.purple.button.off","fallback":"Off","color":"red"}]]},{"strikethrough":true,"text":"\\n                                  ","color":"dark_gray"}]'}
execute as @e[type=text_display,tag=setting.game.double_tap] if score .double_tap settings matches 2 run data merge entity @s {text:'[{"translate":"setting.purple.button.double_tap.name","fallback":"Double Tap? %s","with":[["",{"translate":"setting.purple.button.on","fallback":"On","color":"green"}]]},{"strikethrough":true,"text":"\\n                                  ","color":"dark_gray"}]'}
execute as @e[type=text_display,tag=setting.game.double_tap] if score .double_tap settings matches 3.. run data merge entity @s {text:'[{"translate":"setting.purple.button.double_tap.name","fallback":"Double Tap? %s","with":[["",{"score":{"objective":"settings","name":".double_tap"},"color":"green"}," ",{"translate":"setting.purple.button.hits","fallback":"Hits"}]]},{"strikethrough":true,"text":"\\n                                  ","color":"dark_gray"}]'}

# clean up
playsound minecraft:ui.button.click block @s
advancement revoke @s only main:triggers/settings/game/double_tap
