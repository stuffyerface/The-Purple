execute unless entity @s[tag=within_setting_board_boundries] run return run advancement revoke @s only main:triggers/settings/personal/color

# set team color
execute if entity @s[advancements={main:triggers/settings/personal/color={rc_color_white=true}}] run scoreboard players set @s color 0
execute if entity @s[advancements={main:triggers/settings/personal/color={lc_color_white=true}}] run scoreboard players set @s color 0
execute if entity @s[advancements={main:triggers/settings/personal/color={rc_color_orange=true}}] run scoreboard players set @s color 1
execute if entity @s[advancements={main:triggers/settings/personal/color={lc_color_orange=true}}] run scoreboard players set @s color 1
execute if entity @s[advancements={main:triggers/settings/personal/color={rc_color_magenta=true}}] run scoreboard players set @s color 2
execute if entity @s[advancements={main:triggers/settings/personal/color={lc_color_magenta=true}}] run scoreboard players set @s color 2
execute if entity @s[advancements={main:triggers/settings/personal/color={rc_color_light_blue=true}}] run scoreboard players set @s color 3
execute if entity @s[advancements={main:triggers/settings/personal/color={lc_color_light_blue=true}}] run scoreboard players set @s color 3
execute if entity @s[advancements={main:triggers/settings/personal/color={rc_color_yellow=true}}] run scoreboard players set @s color 4
execute if entity @s[advancements={main:triggers/settings/personal/color={lc_color_yellow=true}}] run scoreboard players set @s color 4
execute if entity @s[advancements={main:triggers/settings/personal/color={rc_color_lime=true}}] run scoreboard players set @s color 5
execute if entity @s[advancements={main:triggers/settings/personal/color={lc_color_lime=true}}] run scoreboard players set @s color 5
execute if entity @s[advancements={main:triggers/settings/personal/color={rc_color_pink=true}}] run scoreboard players set @s color 6
execute if entity @s[advancements={main:triggers/settings/personal/color={lc_color_pink=true}}] run scoreboard players set @s color 6
execute if entity @s[advancements={main:triggers/settings/personal/color={rc_color_gray=true}}] run scoreboard players set @s color 7
execute if entity @s[advancements={main:triggers/settings/personal/color={lc_color_gray=true}}] run scoreboard players set @s color 7
execute if entity @s[advancements={main:triggers/settings/personal/color={rc_color_light_gray=true}}] run scoreboard players set @s color 8
execute if entity @s[advancements={main:triggers/settings/personal/color={lc_color_light_gray=true}}] run scoreboard players set @s color 8
execute if entity @s[advancements={main:triggers/settings/personal/color={rc_color_cyan=true}}] run scoreboard players set @s color 9
execute if entity @s[advancements={main:triggers/settings/personal/color={lc_color_cyan=true}}] run scoreboard players set @s color 9
execute if entity @s[advancements={main:triggers/settings/personal/color={rc_color_purple=true}}] run scoreboard players set @s color 10
execute if entity @s[advancements={main:triggers/settings/personal/color={lc_color_purple=true}}] run scoreboard players set @s color 10
execute if entity @s[advancements={main:triggers/settings/personal/color={lc_color_blue=true}}] run scoreboard players set @s color 11
execute if entity @s[advancements={main:triggers/settings/personal/color={rc_color_blue=true}}] run scoreboard players set @s color 11
execute if entity @s[advancements={main:triggers/settings/personal/color={rc_color_brown=true}}] run scoreboard players set @s color 12
execute if entity @s[advancements={main:triggers/settings/personal/color={lc_color_brown=true}}] run scoreboard players set @s color 12
execute if entity @s[advancements={main:triggers/settings/personal/color={lc_color_green=true}}] run scoreboard players set @s color 13
execute if entity @s[advancements={main:triggers/settings/personal/color={rc_color_green=true}}] run scoreboard players set @s color 13
execute if entity @s[advancements={main:triggers/settings/personal/color={rc_color_red=true}}] run scoreboard players set @s color 14
execute if entity @s[advancements={main:triggers/settings/personal/color={lc_color_red=true}}] run scoreboard players set @s color 14
execute if entity @s[advancements={main:triggers/settings/personal/color={rc_color_black=true}}] run scoreboard players set @s color 15
execute if entity @s[advancements={main:triggers/settings/personal/color={lc_color_black=true}}] run scoreboard players set @s color 15

function main:id/team/set_color

# console log
tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"}," changed color."]

# clean up
playsound minecraft:ui.button.click block @s
advancement grant @s only main:advancement/1_gameplay/choices_choices color
advancement revoke @s only main:triggers/settings/personal/color
title @s actionbar {"selector":"@s"}
scoreboard players set @s actionbar 20
