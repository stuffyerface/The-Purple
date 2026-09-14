# summon
tellraw @a[tag=debug] ["[Console] summoned a new meteor!"]
summon fireball ~ ~ ~ {Tags:["meteor","new_meteor","kill_meteor"], Motion:[0.0,0.0,0.0], acceleration_power:0.06d, ExplosionPower:0b, Silent:1b, HasVisualFire:0b, Item:{id:"minecraft:dead_brain_coral_block",count:1}, Passengers:[{id:"minecraft:item_display",Tags:["meteor.impact_detection","kill_meteor"]}]}
execute store result score .origin_x dummy run data get entity @n[tag=new_meteor] Pos[0] 1000
execute store result score .origin_y dummy run data get entity @n[tag=new_meteor] Pos[1] 1000
execute store result score .origin_z dummy run data get entity @n[tag=new_meteor] Pos[2] 1000

execute store result score .meteor_check_total_items dummy run execute if entity @e[tag=item_spawner.map_2,tag=item]
execute if score .meteor_check_total_items dummy matches 3.. as @n[tag=new_meteor] at @s facing entity @e[limit=1,sort=random,tag=item_spawner.map_2,tag=item] feet run tp @s ^ ^ ^0.1 ~ 90
execute if score .meteor_check_total_items dummy matches ..2 as @n[tag=new_meteor] at @s facing entity @e[limit=1,sort=random,tag=item_spawner.map_2] feet run tp @s ^ ^ ^0.1 ~ 90
execute store result score .motion_x dummy run data get entity @n[tag=new_meteor] Pos[0] 1000
execute store result score .motion_y dummy run data get entity @n[tag=new_meteor] Pos[1] 1000
execute store result score .motion_z dummy run data get entity @n[tag=new_meteor] Pos[2] 1000

# set motion
execute store result entity @n[tag=new_meteor] Motion[0] double 0.01 run scoreboard players operation .motion_x dummy -= .origin_x dummy
execute store result entity @n[tag=new_meteor] Motion[1] double 0.01 run scoreboard players operation .motion_y dummy -= .origin_y dummy
execute store result entity @n[tag=new_meteor] Motion[2] double 0.01 run scoreboard players operation .motion_z dummy -= .origin_z dummy
tag @e[tag=new_meteor] remove new_meteor
