execute unless entity @s[tag=within_setting_board_boundries] run return run advancement revoke @s only main:triggers/settings/game/infection_time
execute if score .game data matches 0.. if function main:message/settings/locked run return run advancement revoke @s only main:triggers/settings/game/infection_time

# modify setting
execute if entity @s[advancements={main:triggers/settings/game/infection_time={right_click=true}}] run function main:lobby/settings/game/infection_time/detect/right_click
execute if entity @s[advancements={main:triggers/settings/game/infection_time={left_click=true}}] run function main:lobby/settings/game/infection_time/detect/left_click
execute if entity @s[advancements={main:triggers/settings/game/infection_time={shift_right_click=true}}] run function main:lobby/settings/game/infection_time/detect/shift_right_click
execute if entity @s[advancements={main:triggers/settings/game/infection_time={shift_left_click=true}}] run function main:lobby/settings/game/infection_time/detect/shift_left_click
function main:module/corruption/scoreboard_math

# save last updater
tag @s add modifiedSetting
data merge entity @e[type=text_display,tag=setting.game.infection_time-updater,limit=1] {text:[{"text":""},{"text":" ","strikethrough":true,"color":"gray"},{"text":" "},{"selector":"@p[tag=modifiedSetting]"},{"text":"\n                         "}]}
data modify storage main:settings setting.game.infection_time.last_updater_id set from entity @s UUID
data modify storage main:settings setting.game.infection_time.last_updater_name set from entity @e[type=text_display,tag=setting.game.infection_time-updater,limit=1] text
data remove entity @e[type=item_display,tag=setting.game.infection_time-updater,limit=1] item.components.minecraft:profile
data modify entity @e[type=item_display,tag=setting.game.infection_time-updater,limit=1] item.components.minecraft:profile.id set from storage main:settings setting.game.infection_time.last_updater_id
tag @s remove modifiedSetting

# update settings board
execute if score .infection_time settings matches 1.. as @e[type=text_display,tag=setting.game.infection_time] run data merge entity @s {text:[{"translate":"setting.purple.button.infection_time.name","fallback":"Infection Time: %s","with":[["",{"score":{"objective":"settings","name":".infection_time"},"color":"green"}," ",{"translate":"setting.purple.button.ticks","fallback":"ticks"}]]},{"strikethrough":true,"text":"\n                                  ","color":"dark_gray"}]}
execute if score .infection_time settings matches 0 as @e[type=text_display,tag=setting.game.infection_time] run data merge entity @s {text:[{"translate":"setting.purple.button.infection_time.name","fallback":"Infection Time: %s","with":[["",{"translate":"setting.purple.button.instant","fallback":"Instant","color":"dark_red"}]]},{"strikethrough":true,"text":"\n                                  ","color":"dark_gray"}]}
execute if score .infection_time settings matches ..-1 as @e[type=text_display,tag=setting.game.infection_time] run data merge entity @s {text:[{"translate":"setting.purple.button.infection_time.name","fallback":"Infection Time: %s","with":[["",{"translate":"setting.purple.button.off","fallback":"Off","color":"red"}]]},{"strikethrough":true,"text":"\n                                  ","color":"dark_gray"}]}

# clean up
playsound minecraft:ui.button.click block @s
advancement revoke @s only main:triggers/settings/game/infection_time