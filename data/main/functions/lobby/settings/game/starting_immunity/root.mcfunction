<<<<<<< HEAD
# modify setting
execute if entity @s[advancements={main:triggers/settings/game/starting_immunity={right_click=true}}] run function main:lobby/settings/game/starting_immunity/detect/right_click
execute if entity @s[advancements={main:triggers/settings/game/starting_immunity={left_click=true}}] run function main:lobby/settings/game/starting_immunity/detect/left_click
execute if entity @s[advancements={main:triggers/settings/game/starting_immunity={shift_right_click=true}}] run function main:lobby/settings/game/starting_immunity/detect/shift_right_click
execute if entity @s[advancements={main:triggers/settings/game/starting_immunity={shift_left_click=true}}] run function main:lobby/settings/game/starting_immunity/detect/shift_left_click

# save last updater
tag @s add modifiedSetting
data merge entity @e[type=text_display,tag=setting.game.starting_immunity-updater,limit=1] {text:'[{"text":""},{"text":" ","strikethrough":true,"color":"gray"},{"text":" "},{"selector":"@p[tag=modifiedSetting]"},{"text":"\\n                         "}]'}
data modify storage main:settings setting.game[].starting_immunity.last_updater_id set from entity @s UUID
data modify storage main:settings setting.game[].starting_immunity.last_updater_name set from entity @e[type=text_display,tag=setting.game.starting_immunity-updater,limit=1] text
data remove entity @e[type=item_display,tag=setting.game.starting_immunity-updater,limit=1] item.components.minecraft:profile
data modify entity @e[type=item_display,tag=setting.game.starting_immunity-updater,limit=1] item.components.minecraft:profile.id set from storage main:settings setting.game[].starting_immunity.last_updater_id
tag @s remove modifiedSetting

# update settings board
execute if score .starting_immunity settings matches 1.. as @e[type=text_display,tag=setting.game.starting_immunity] run data merge entity @s {text:'[{"text":"Starting Immunity: "},{"color":"green","score":{"name":".starting_immunity","objective":"settings"}},{"text":"s"},{"strikethrough":true,"text":"\\n                                ","color":"dark_gray"}]'}
execute if score .starting_immunity settings matches ..0 as @e[type=text_display,tag=setting.game.starting_immunity] run data merge entity @s {text:'[{"text":"Starting Immunity: "},{"text":"Off","color":"red"},{"strikethrough":true,"text":"\\n                                ","color":"dark_gray"}]'}

# clean up
playsound minecraft:ui.button.click block @s
advancement revoke @s only main:triggers/settings/game/starting_immunity
=======
# modify setting
execute if entity @s[advancements={main:triggers/settings/game/starting_immunity={right_click=true}}] run function main:lobby/settings/game/starting_immunity/detect/right_click
execute if entity @s[advancements={main:triggers/settings/game/starting_immunity={left_click=true}}] run function main:lobby/settings/game/starting_immunity/detect/left_click
execute if entity @s[advancements={main:triggers/settings/game/starting_immunity={shift_right_click=true}}] run function main:lobby/settings/game/starting_immunity/detect/shift_right_click
execute if entity @s[advancements={main:triggers/settings/game/starting_immunity={shift_left_click=true}}] run function main:lobby/settings/game/starting_immunity/detect/shift_left_click

# save last updater
tag @s add modifiedSetting
data merge entity @e[type=text_display,tag=setting.game.starting_immunity-updater,limit=1] {text:'[{"text":""},{"text":" ","strikethrough":true,"color":"gray"},{"text":" "},{"selector":"@p[tag=modifiedSetting]"},{"text":"\\n                         "}]'}
data modify storage main:settings setting.game[].starting_immunity.last_updater_id set from entity @s UUID
data modify storage main:settings setting.game[].starting_immunity.last_updater_name set from entity @e[type=text_display,tag=setting.game.starting_immunity-updater,limit=1] text
data remove entity @e[type=item_display,tag=setting.game.starting_immunity-updater,limit=1] item.components.minecraft:profile
data modify entity @e[type=item_display,tag=setting.game.starting_immunity-updater,limit=1] item.components.minecraft:profile.id set from storage main:settings setting.game[].starting_immunity.last_updater_id
tag @s remove modifiedSetting

# update settings board
execute if score .starting_immunity settings matches 1.. as @e[type=text_display,tag=setting.game.starting_immunity] run data merge entity @s {text:'[{"text":"Starting Immunity: "},{"color":"green","score":{"name":".starting_immunity","objective":"settings"}},{"text":"s"},{"strikethrough":true,"text":"\\n                                ","color":"dark_gray"}]'}
execute if score .starting_immunity settings matches ..0 as @e[type=text_display,tag=setting.game.starting_immunity] run data merge entity @s {text:'[{"text":"Starting Immunity: "},{"text":"Off","color":"red"},{"strikethrough":true,"text":"\\n                                ","color":"dark_gray"}]'}

# clean up
playsound minecraft:ui.button.click block @s
advancement revoke @s only main:triggers/settings/game/starting_immunity
>>>>>>> 8e1a5a003a5a873d2b78300003709fbbb3c13948
