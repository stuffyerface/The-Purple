execute unless entity @s[tag=within_setting_board_boundries] run return run advancement revoke @s only main:triggers/settings/personal/color

# set team color
execute store result storage main:id recent.id int 1 run scoreboard players get @s id
function main:lobby/settings/personal/color/set with storage main:id recent

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" changed color."}]

# clean up
playsound minecraft:ui.button.click block @s
advancement revoke @s only main:triggers/settings/personal/color
title @s actionbar {"selector":"@s"}
scoreboard players set @s actionbar 20
