execute unless entity @s[tag=within_setting_board_boundries] run return run advancement revoke @s only main:triggers/settings/personal/source_ability
execute if score .game data matches 0.. if function main:message/settings/locked run return run advancement revoke @s only main:triggers/settings/personal/source_ability

# switch
execute if entity @s[advancements={main:triggers/settings/personal/source_ability={rc_speed=true}}] run function main:lobby/settings/personal/source_ability/speed/root
execute if entity @s[advancements={main:triggers/settings/personal/source_ability={lc_speed=true}}] run function main:lobby/settings/personal/source_ability/speed/root
execute if entity @s[advancements={main:triggers/settings/personal/source_ability={rc_invisible=true}}] run function main:lobby/settings/personal/source_ability/invisible/root
execute if entity @s[advancements={main:triggers/settings/personal/source_ability={lc_invisible=true}}] run function main:lobby/settings/personal/source_ability/invisible/root
execute if entity @s[advancements={main:triggers/settings/personal/source_ability={rc_darkness=true}}] run function main:lobby/settings/personal/source_ability/darkness/root
execute if entity @s[advancements={main:triggers/settings/personal/source_ability={lc_darkness=true}}] run function main:lobby/settings/personal/source_ability/darkness/root
execute if entity @s[advancements={main:triggers/settings/personal/source_ability={rc_corruption=true}}] run function main:lobby/settings/personal/source_ability/corruption/root
execute if entity @s[advancements={main:triggers/settings/personal/source_ability={lc_corruption=true}}] run function main:lobby/settings/personal/source_ability/corruption/root
execute if entity @s[advancements={main:triggers/settings/personal/source_ability={rc_reach=true}}] run function main:lobby/settings/personal/source_ability/reach/root
execute if entity @s[advancements={main:triggers/settings/personal/source_ability={lc_reach=true}}] run function main:lobby/settings/personal/source_ability/reach/root

# clean up
playsound minecraft:ui.button.click block @s
advancement revoke @s only main:triggers/settings/personal/source_ability
