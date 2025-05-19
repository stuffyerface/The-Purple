# infect if no safety vest
execute unless predicate main:has_item/safety_vest run function main:module/cosmetic/explosion
execute unless predicate main:has_item/safety_vest run function main:message/tagged/infected_by_environment
execute unless predicate main:has_item/safety_vest run return run function main:game/tag/function/player_infect

# break safety vest
execute if predicate main:has_item/safety_vest run scoreboard players add @s stat.item.safety_vest 1
execute if predicate main:has_item/safety_vest run function main:message/tagged/safety_vest
execute if predicate main:has_item/safety_vest run playsound minecraft:entity.item.break player @a[distance=..20] ~ ~ ~ 1 1 
execute if predicate main:has_item/safety_vest run particle item{item:"leather_chestplate"} ^ ^1.4 ^0.5 0 0.1 0 0.05 5 force
execute if predicate main:has_item/safety_vest run return run item replace entity @s armor.chest with air
