execute unless entity @s[tag=within_setting_board_boundries] run return run advancement revoke @s only main:triggers/settings/personal/death_effect

# switch
execute if entity @s[advancements={main:triggers/settings/personal/death_effect={rc_explode=true}}] run function main:lobby/settings/personal/death_effect/explode/root
execute if entity @s[advancements={main:triggers/settings/personal/death_effect={lc_explode=true}}] run function main:lobby/settings/personal/death_effect/explode/root
execute if entity @s[advancements={main:triggers/settings/personal/death_effect={rc_shrink=true}}] run function main:lobby/settings/personal/death_effect/shrink/root
execute if entity @s[advancements={main:triggers/settings/personal/death_effect={lc_shrink=true}}] run function main:lobby/settings/personal/death_effect/shrink/root
execute if entity @s[advancements={main:triggers/settings/personal/death_effect={rc_grave=true}}] run function main:lobby/settings/personal/death_effect/grave/root
execute if entity @s[advancements={main:triggers/settings/personal/death_effect={lc_grave=true}}] run function main:lobby/settings/personal/death_effect/grave/root

# clean up
advancement grant @s only main:advancement/1_gameplay/choices_choices death_effect
advancement revoke @s only main:triggers/settings/personal/death_effect
playsound minecraft:ui.button.click block @s