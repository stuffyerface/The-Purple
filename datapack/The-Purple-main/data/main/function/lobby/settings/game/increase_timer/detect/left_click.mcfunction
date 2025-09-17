# increase increase_timer by 1
execute if score .increase_timer settings matches 5.. run scoreboard players set .increase_timer settings -1
execute if score .increase_timer settings matches ..4 run scoreboard players add .increase_timer settings 1
execute if score .increase_timer settings matches ..0 run scoreboard players set .increase_timer settings 0

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"increase_timer","color":"gray"},{"text":" to "},{"score":{"name":".increase_timer","objective":"settings"},"color":"green"},{"text":" left_click","color":"gray"}]
