# modify setting
execute if entity @s[advancements={main:triggers/settings/game/tagback={right_click=true}}] run function main:lobby/settings/game/tagback/detect/right_click
execute if entity @s[advancements={main:triggers/settings/game/tagback={left_click=true}}] run function main:lobby/settings/game/tagback/detect/left_click
execute if entity @s[advancements={main:triggers/settings/game/tagback={shift_right_click=true}}] run function main:lobby/settings/game/tagback/detect/shift_right_click
execute if entity @s[advancements={main:triggers/settings/game/tagback={shift_left_click=true}}] run function main:lobby/settings/game/tagback/detect/shift_left_click

# check last updater
tag @s add modifiedSetting
data merge entity @e[type=text_display,tag=setting.game.tagback-updater,limit=1] {text:'[{"text":""},{"text":" ","strikethrough":true,"color":"gray"},{"text":" "},{"selector":"@p[tag=modifiedSetting]"},{"text":"\\n                         "}]'}
data modify storage main:settings setting.game[].tagback.last_updater_id set from entity @s UUID
data modify storage main:settings setting.game[].tagback.last_updater_name set from entity @e[type=text_display,tag=setting.game.tagback-updater,limit=1] text
data remove entity @e[type=item_display,tag=setting.game.tagback-updater,limit=1] item.components.minecraft:profile
data modify entity @e[type=item_display,tag=setting.game.tagback-updater,limit=1] item.components.minecraft:profile.id set from storage main:settings setting.game[].tagback.last_updater_id
tag @s remove modifiedSetting

# update settings board
execute as @e[type=text_display,tag=setting.game.tagback] if score .tagback settings matches 0 run data merge entity @s {text:'[{"text":"Allow Tagbacks? "},{"text":"Never","color":"red"},{"strikethrough":true,"text":"\\n                                ","color":"dark_gray"}]'}
execute as @e[type=text_display,tag=setting.game.tagback] if score .tagback settings matches ..-1 run data merge entity @s {text:'[{"text":"Allow Tagbacks? "},{"text":"Always","color":"green"},{"strikethrough":true,"text":"\\n                                ","color":"dark_gray"}]'}
execute as @e[type=text_display,tag=setting.game.tagback] if score .tagback settings matches 1.. run data merge entity @s {text:'[{"text":"Allow Tagbacks? "},{"color":"green","score":{"name":".tagback","objective":"settings"}},{"text":"s"},{"strikethrough":true,"text":"\\n                                ","color":"dark_gray"}]'}

# clean up
playsound minecraft:ui.button.click block @s
advancement revoke @s only main:triggers/settings/game/tagback
