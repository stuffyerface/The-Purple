execute unless entity @s[tag=within_setting_board_boundries] run return run advancement revoke @s only main:triggers/settings/game/reach
execute if score .game data matches 0.. if function main:message/settings/locked run return run advancement revoke @s only main:triggers/settings/game/reach

# modify setting
execute if entity @s[advancements={main:triggers/settings/game/reach={right_click=true}}] run function main:lobby/settings/game/reach/detect/right_click
execute if entity @s[advancements={main:triggers/settings/game/reach={left_click=true}}] run function main:lobby/settings/game/reach/detect/left_click
execute if entity @s[advancements={main:triggers/settings/game/reach={shift_right_click=true}}] run function main:lobby/settings/game/reach/detect/shift_right_click
execute if entity @s[advancements={main:triggers/settings/game/reach={shift_left_click=true}}] run function main:lobby/settings/game/reach/detect/shift_left_click

# save last updater
tag @s add modifiedSetting
data merge entity @e[type=text_display,tag=setting.game.reach-updater,limit=1] {text:'[{"text":""},{"text":" ","strikethrough":true,"color":"gray"},{"text":" "},{"selector":"@p[tag=modifiedSetting]"},{"text":"\\n                         "}]'}
data modify storage main:settings setting.game.reach.last_updater_id set from entity @s UUID
data modify storage main:settings setting.game.reach.last_updater_name set from entity @e[type=text_display,tag=setting.game.reach-updater,limit=1] text
data remove entity @e[type=item_display,tag=setting.game.reach-updater,limit=1] item.components.minecraft:profile
data modify entity @e[type=item_display,tag=setting.game.reach-updater,limit=1] item.components.minecraft:profile.id set from storage main:settings setting.game.reach.last_updater_id
tag @s remove modifiedSetting

# update settings board
execute as @e[type=text_display,tag=setting.game.reach] run data merge entity @s {text:'[{"translate":"setting.purple.button.reach.name","fallback":"Reach: %s","with":[["",{"score":{"objective":"settings","name":".reach"},"color":"green"}," ",{"translate":"setting.purple.button.blocks","fallback":"Blocks"}]]},{"strikethrough":true,"text":"\\n                                  ","color":"dark_gray"}]'}

# clean up
playsound minecraft:ui.button.click block @s
advancement revoke @s only main:triggers/settings/game/reach
