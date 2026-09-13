execute if entity @s[advancements={main:triggers/items/draconic_essence=true}] unless entity @s[tag=!draconic_stage_1,tag=!draconic_stage_2,tag=!draconic_stage_3] run return fail
advancement revoke @s only main:triggers/items/draconic_essence
execute unless score .game data matches 1.. run return fail
execute unless entity @s[tag=player] run return fail

# absolutely terribly implemented tag swap
execute if entity @s[tag=!draconic_stage_1,tag=!draconic_stage_2,tag=!draconic_stage_3] run tag @s add is_draconic_stage_0
execute if entity @s[tag=draconic_stage_1] run tag @s add is_draconic_stage_1
execute if entity @s[tag=draconic_stage_2] run tag @s add is_draconic_stage_2
execute if entity @s[tag=draconic_stage_3] run tag @s add is_draconic_stage_3
tag @s remove draconic_stage_1
tag @s remove draconic_stage_2
tag @s remove draconic_stage_3
execute if entity @s[tag=is_draconic_stage_0] run tag @s add draconic_stage_1
execute if entity @s[tag=is_draconic_stage_1] run tag @s add draconic_stage_2
execute if entity @s[tag=is_draconic_stage_2] run tag @s add draconic_stage_3
tag @s remove is_draconic_stage_0
tag @s remove is_draconic_stage_1
tag @s remove is_draconic_stage_2
tag @s remove is_draconic_stage_3

# setup
execute if entity @s[tag=draconic_stage_3] run tag @s add was_source
execute if entity @s[tag=draconic_stage_3] run effect give @s minecraft:speed infinite 1 true
execute if entity @s[tag=draconic_stage_2] run loot replace entity @s armor.head loot main:item/draconic_egg
execute if entity @s[tag=draconic_stage_3] run loot replace entity @s armor.head loot main:item/draconic_maw
execute if entity @s[tag=draconic_stage_1] run scoreboard players add @s stat.item.draconic_essence 1
execute if entity @s[tag=draconic_stage_3] run scoreboard players add @s stat.item.draconic_essence.survived_egg 1

# message
function main:message/item/draconic_essence
