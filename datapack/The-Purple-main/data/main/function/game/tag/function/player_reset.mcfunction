clear @s
effect clear @s
tag @s remove ready
tag @s remove player
tag @s remove alive
tag @s remove source
tag @s remove infected
tag @s remove corrupted
tag @s remove spectator
tag @s remove death_effect.shrink
tag @s remove remove_my_glass_bottle
tag @s remove used_ability_before
tag @s remove has_been_revived
tag @s remove has_been_infected
tag @s remove has_used_healing_items
tag @s remove return_to_lobby_confirm
tag @s remove return_item.mainhand.LOBBY
tag @s remove return_item.offhand.LOBBY
tag @s remove return_item.mainhand.SPECTATE
tag @s remove return_item.offhand.SPECTATE
tag @s remove return_item.mainhand.SPECTATE_GAME
tag @s remove return_item.offhand.SPECTATE_GAME
stopsound @s
function main:id/team/set_color
function main:module/disconnect/sync/marker
function main:module/item/function/reset
attribute @s minecraft:scale modifier remove purple:corrupted
attribute @s minecraft:scale modifier remove purple:death_effect.shrink
attribute @s minecraft:entity_interaction_range modifier remove purple:reach
attribute @s minecraft:entity_interaction_range base reset

function main:lobby/player/inventory
