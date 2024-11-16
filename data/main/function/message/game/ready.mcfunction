title @s[tag=ready] actionbar [{"translate":"message.purple.game.ready","fallback":"You will join the next game!","color":"green"}]
title @s[tag=!ready] actionbar [{"translate":"message.purple.game.ready_canceled","fallback":"You're no longer ready.","color":"red"}]
scoreboard players set @s actionbar 30

execute if entity @s[tag=ready] unless score @s cooldown.item.ready matches 1.. run scoreboard players reset @s cooldown.item.not_ready
execute if entity @s[tag=ready] unless score @s cooldown.item.ready matches 1.. run tellraw @a {"color":"green","translate":"message.purple.im_ready","fallback":"%s is ready! %s§7/§r%s","with":[{"selector":"@s"},{"color":"yellow","score":{"name":".ready","objective":"data"}},{"color":"yellow","score":{"name":".required","objective":"data"}}]}
execute if entity @s[tag=ready] unless score @s cooldown.item.ready matches 1.. run scoreboard players set @s cooldown.item.ready 100
execute if entity @s[tag=!ready] unless score @s cooldown.item.not_ready matches 1.. run tellraw @a {"color":"red","translate":"message.purple.im_not_ready","fallback":"%s isn't ready anymore. %s§7/§r%s","with":[{"selector":"@s"},{"color":"yellow","score":{"name":".ready","objective":"data"}},{"color":"yellow","score":{"name":".required","objective":"data"}}]}
execute if entity @s[tag=!ready] unless score @s cooldown.item.not_ready matches 1.. run scoreboard players set @s cooldown.item.not_ready 100
