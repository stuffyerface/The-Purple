execute unless entity @s[tag=within_setting_board_boundries] run return run advancement revoke @s only main:triggers/settings/personal/victory_dance

# switch
execute if entity @s[advancements={main:triggers/settings/personal/victory_dance={rc_fireworks=true}}] run function main:lobby/settings/personal/victory_dance/fireworks/root
execute if entity @s[advancements={main:triggers/settings/personal/victory_dance={lc_fireworks=true}}] run function main:lobby/settings/personal/victory_dance/fireworks/root
execute if entity @s[advancements={main:triggers/settings/personal/victory_dance={rc_rainbow_sheep=true}}] run function main:lobby/settings/personal/victory_dance/rainbow_sheep/root
execute if entity @s[advancements={main:triggers/settings/personal/victory_dance={lc_rainbow_sheep=true}}] run function main:lobby/settings/personal/victory_dance/rainbow_sheep/root
execute if entity @s[advancements={main:triggers/settings/personal/victory_dance={rc_horse=true}}] run function main:lobby/settings/personal/victory_dance/horse/root
execute if entity @s[advancements={main:triggers/settings/personal/victory_dance={lc_horse=true}}] run function main:lobby/settings/personal/victory_dance/horse/root
execute if entity @s[advancements={main:triggers/settings/personal/victory_dance={rc_golden_throne=true}}] run function main:lobby/settings/personal/victory_dance/golden_throne/root
execute if entity @s[advancements={main:triggers/settings/personal/victory_dance={lc_golden_throne=true}}] run function main:lobby/settings/personal/victory_dance/golden_throne/root

# clean up
advancement grant @s only main:advancement/1_gameplay/choices_choices victory_dance
advancement revoke @s only main:triggers/settings/personal/victory_dance
playsound minecraft:ui.button.click block @s
