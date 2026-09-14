advancement revoke @s only main:triggers/game/spectate
execute unless entity @s[scores={spectator=1..}] run return fail

scoreboard players operation .check spectator = @s spectator
execute at @s as @e[tag=spectator.detection] if score @s spectator = .check spectator unless entity @s[dx=0] run return fail

spectate
execute positioned ~ ~-2 ~ run tp @s ^ ^ ^-6 ~ ~
playsound minecraft:ui.button.click player @s

execute if score .game data matches 2.. run return fail
execute if score @s spectator_ability_timer matches 0.. run return run function main:message/spectator/cooldown
execute unless score @s spectator_ability matches 0.. run function main:module/spectator/ability/fireworks
execute if score @s spectator_ability matches 1 run function main:module/spectator/ability/fireworks
execute if score @s spectator_ability matches 2 run function main:module/spectator/ability/speed
execute if score @s spectator_ability matches 3 run function main:module/spectator/ability/teleport
execute if score @s spectator_ability matches 4 run function main:module/spectator/ability/slime
execute if score @s spectator_ability matches 5 run function main:module/spectator/ability/time
execute if score @s spectator_ability matches 6 run function main:module/spectator/ability/item
