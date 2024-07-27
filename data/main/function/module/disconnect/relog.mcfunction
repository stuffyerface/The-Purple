scoreboard players reset @s relog

scoreboard players operation .relog id = @s id
execute as @e[tag=id.marker.offline] if score @s id = .relog id run function main:module/disconnect/zombie/kill
scoreboard players reset .relog id

# calculate time offline
scoreboard players operation .calc disconnect = .world gameData
scoreboard players operation .calc disconnect -= @s disconnect
tellraw @a[tag=debug] [{"text":"[Console] "},{"text":"its been "},{"score":{"objective":"disconnect","name":".calc"},"color":"green"},{"text":" ticks since "},{"selector":"@s"},{"text":" was last online!"}]

# if rejoining after the game ended
execute if score .game gameData matches -1 run tag @s[tag=alive] add just_rejoined
execute if score .game gameData matches -1 run tag @s[gamemode=spectator] add just_rejoined

execute if entity @s[tag=just_rejoined] run tag @s remove alive
execute if entity @s[tag=just_rejoined] run tag @s remove source
execute if entity @s[tag=just_rejoined] run clear @s minecraft:popped_chorus_fruit[minecraft:custom_data={source:1b}]
execute if entity @s[tag=just_rejoined] run gamemode adventure @s
execute if entity @s[tag=just_rejoined] run function c:tp/current_location
execute if entity @s[tag=just_rejoined] run function main:module/disconnect/sync/marker
execute if entity @s[tag=just_rejoined] run tag @s remove just_rejoined

# if offline for too long during the game
execute if score .game gameData matches 0.. if score .calc disconnect >= .offline_time settings run tag @s remove alive
execute if score .game gameData matches 0.. if score .calc disconnect >= .offline_time settings run tag @s remove source
execute if score .game gameData matches 0.. if score .calc disconnect >= .offline_time settings run gamemode spectator @s
execute if score .game gameData matches 0.. if score .calc disconnect >= .offline_time settings run function main:module/disconnect/sync/marker
execute if score .game gameData matches 0.. if score .calc disconnect >= .offline_time settings run function main:message/game/disconnect
execute if score .game gameData matches 0.. if score .calc disconnect >= .offline_time settings run function c:tp/current_location
scoreboard players reset .calc disconnect
