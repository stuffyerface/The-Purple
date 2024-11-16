# if you're on the edge of the safezone, run particles and return.
execute if block ~ ~-1 ~ tinted_glass if function main:module/outside_map/function/particle_wall run return run execute if score @s outside_map matches 0.. run scoreboard players reset @s outside_map

# if you've left the safezone, run cosmetics + timer
execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 2
execute at @s run particle falling_dust{block_state:"minecraft:amethyst_block"} ~ ~ ~ 5 5 5 0 50 normal @s
scoreboard players set @s actionbar 2
execute if function main:module/outside_map/function/timer run return run title @s actionbar {"translate":"message.purple.outside_map.warning","fallback":"You will be infected in %s unless you turn back!","with":[[{"score":{"name":".calc","objective":"outside_map"},"color":"green"},{"translate":"setting.purple.button.seconds","fallback":"s"}]],"color":"red"}

# if time runs out, infect
scoreboard players reset @s outside_map
scoreboard players set @s actionbar 30
title @s actionbar {"translate":"message.purple.outside_map.infected","fallback":"You left the map and got infected!","color":"red"}

execute at @s run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 1.25
execute at @s run function main:module/cosmetic/explosion

function main:message/tagged/infected_by_environment
function main:game/tag/function/player_infect
