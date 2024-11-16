# randomize
execute store result score .random_firework.life dummy run random value 20..40
execute store result score .random_firework.color dummy run random value 0..999999999
execute store result score .random_firework.fade dummy run random value 0..999999999
execute store result score .random_firework.twinkle dummy run random value 0..1
execute store result score .random_firework.trail dummy run random value 0..1
execute store result score .random_firework.shape dummy run random value 1..5

# summon
summon firework_rocket ~ ~ ~ {Tags:["random_firework.new"], LifeTime:20, FireworksItem:{id:"minecraft:firework_rocket", count:1, components:{"minecraft:fireworks":{explosions:[{has_twinkle:false, has_trail:false, shape:"small_ball", colors:[I;0], fade_colors:[I;0] }]}}}}

# modify
execute store result entity @n[tag=random_firework.new] LifeTime int 1 run scoreboard players get .random_firework.life dummy
execute store result entity @n[tag=random_firework.new] FireworksItem.components."minecraft:fireworks".explosions[0].colors[] int 1 run scoreboard players get .random_firework.color dummy
execute store result entity @n[tag=random_firework.new] FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[] int 1 run scoreboard players get .random_firework.fade dummy
execute store result entity @n[tag=random_firework.new] FireworksItem.components."minecraft:fireworks".explosions[0].has_twinkle int 1 run scoreboard players get .random_firework.twinkle dummy
execute store result entity @n[tag=random_firework.new] FireworksItem.components."minecraft:fireworks".explosions[0].has_trail int 1 run scoreboard players get .random_firework.trail dummy
execute if score .random_firework.shape dummy matches 1 run data modify entity @n[tag=random_firework.new] FireworksItem.components."minecraft:fireworks".explosions[0].shape set value small_ball
execute if score .random_firework.shape dummy matches 2 run data modify entity @n[tag=random_firework.new] FireworksItem.components."minecraft:fireworks".explosions[0].shape set value large_ball
execute if score .random_firework.shape dummy matches 3 run data modify entity @n[tag=random_firework.new] FireworksItem.components."minecraft:fireworks".explosions[0].shape set value star
execute if score .random_firework.shape dummy matches 4 run data modify entity @n[tag=random_firework.new] FireworksItem.components."minecraft:fireworks".explosions[0].shape set value creeper
execute if score .random_firework.shape dummy matches 5 run data modify entity @n[tag=random_firework.new] FireworksItem.components."minecraft:fireworks".explosions[0].shape set value burst
data merge entity @n[tag=random_firework.new] {Tags:["random_firework"]}

# debug
tellraw @a[tag=debug] ["[Console] ",{"translate":"","fallback":"%s: %7$s, %s: %8$s, %s: %9$s%13$s, %s: %10$s%13$s, %s: [%14$s;%11$s], %s: [%14$s;%12$s]","with":[{"text":"Life","color":"aqua"},{"text":"shape","color":"aqua"},{"text":"trail","color":"aqua"},{"text":"twinkle","color":"aqua"},{"text":"colors","color":"aqua"},{"text":"fade_colors","color":"aqua"},{"score":{"name":".random_firework.life","objective":"dummy"},"color":"gold"},{"score":{"name":".random_firework.shape","objective":"dummy"},"color":"gold"},{"score":{"name":".random_firework.trail","objective":"dummy"},"color":"gold"},{"score":{"name":".random_firework.twinkle","objective":"dummy"},"color":"gold"},{"score":{"name":".random_firework.color","objective":"dummy"},"color":"gold"},{"score":{"name":".random_firework.fade","objective":"dummy"},"color":"gold"},{"text":"b","color":"red"},{"text":"I","color":"red"}]}]

# Life: 20, shape: 1, trail: 0b, twinkle: 0b, colors: [I;0], fade_colors: [I;0]
# %s: %7$s, %s: %8$s, %s: %9$s%13$s, %s: %10$s%13$s, %s: [%14$s;%11$s], %s: [%14$s;%12$s]
