execute if entity @s[advancements={main:triggers/items/warp={warp_spawn=true}}] run function c:tp/lobby
advancement revoke @s only main:triggers/items/warp
clear @s compass[custom_data={id:WARP_SPAWN}]
