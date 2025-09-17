execute unless entity @s[tag=within_setting_board_boundries] run return run advancement revoke @s only main:triggers/settings/personal/spectator_ability
execute if score .game data matches 0.. if function main:message/settings/locked run return run advancement revoke @s only main:triggers/settings/personal/spectator_ability

# switch
execute if entity @s[advancements={main:triggers/settings/personal/spectator_ability={rc_fireworks=true}}] run function main:lobby/settings/personal/spectator_ability/fireworks/root
execute if entity @s[advancements={main:triggers/settings/personal/spectator_ability={lc_fireworks=true}}] run function main:lobby/settings/personal/spectator_ability/fireworks/root
execute if entity @s[advancements={main:triggers/settings/personal/spectator_ability={rc_speed=true}}] run function main:lobby/settings/personal/spectator_ability/speed/root
execute if entity @s[advancements={main:triggers/settings/personal/spectator_ability={lc_speed=true}}] run function main:lobby/settings/personal/spectator_ability/speed/root
execute if entity @s[advancements={main:triggers/settings/personal/spectator_ability={rc_teleport=true}}] run function main:lobby/settings/personal/spectator_ability/teleport/root
execute if entity @s[advancements={main:triggers/settings/personal/spectator_ability={lc_teleport=true}}] run function main:lobby/settings/personal/spectator_ability/teleport/root
execute if entity @s[advancements={main:triggers/settings/personal/spectator_ability={rc_slime=true}}] run function main:lobby/settings/personal/spectator_ability/slime/root
execute if entity @s[advancements={main:triggers/settings/personal/spectator_ability={lc_slime=true}}] run function main:lobby/settings/personal/spectator_ability/slime/root
execute if entity @s[advancements={main:triggers/settings/personal/spectator_ability={rc_time=true}}] run function main:lobby/settings/personal/spectator_ability/time/root
execute if entity @s[advancements={main:triggers/settings/personal/spectator_ability={lc_time=true}}] run function main:lobby/settings/personal/spectator_ability/time/root
execute if entity @s[advancements={main:triggers/settings/personal/spectator_ability={rc_item=true}}] run function main:lobby/settings/personal/spectator_ability/item/root
execute if entity @s[advancements={main:triggers/settings/personal/spectator_ability={lc_item=true}}] run function main:lobby/settings/personal/spectator_ability/item/root

# clean up
playsound minecraft:ui.button.click block @s
advancement revoke @s only main:triggers/settings/personal/spectator_ability
