# increase item_spawn_percent
scoreboard players operation .modify_item_spawn_percent settings = .item_spawn_percent settings
execute if score .modify_item_spawn_percent settings matches 100.. run scoreboard players set .item_spawn_percent settings 10
execute if score .modify_item_spawn_percent settings matches 90..99 run scoreboard players set .item_spawn_percent settings 100
execute if score .modify_item_spawn_percent settings matches 80..89 run scoreboard players set .item_spawn_percent settings 90
execute if score .modify_item_spawn_percent settings matches 70..79 run scoreboard players set .item_spawn_percent settings 80
execute if score .modify_item_spawn_percent settings matches 60..69 run scoreboard players set .item_spawn_percent settings 70
execute if score .modify_item_spawn_percent settings matches 50..59 run scoreboard players set .item_spawn_percent settings 60
execute if score .modify_item_spawn_percent settings matches 40..49 run scoreboard players set .item_spawn_percent settings 50
execute if score .modify_item_spawn_percent settings matches 30..39 run scoreboard players set .item_spawn_percent settings 40
execute if score .modify_item_spawn_percent settings matches 20..29 run scoreboard players set .item_spawn_percent settings 30
execute if score .modify_item_spawn_percent settings matches 10..19 run scoreboard players set .item_spawn_percent settings 20
execute if score .modify_item_spawn_percent settings matches 1..9 run scoreboard players set .item_spawn_percent settings 10

execute if score .modify_item_spawn_percent settings matches ..0 run scoreboard players set .item_spawn_percent settings 10
scoreboard players reset .modify_item_spawn_percent settings

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"item_spawn_percent","color":"gray"},{"text":" to "},{"score":{"name":".item_spawn_percent","objective":"settings"},"color":"green"},{"text":" left_click","color":"gray"}]
