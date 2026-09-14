# decrease increase_timer by 1
execute if score .increase_timer settings matches ..0 run scoreboard players set .increase_timer settings 6
execute if score .increase_timer settings matches 0.. run scoreboard players remove .increase_timer settings 1
execute if score .increase_timer settings matches 7.. run scoreboard players set .increase_timer settings 0

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"increase_timer","color":"gray"},{"text":" to "},{"score":{"name":".increase_timer","objective":"settings"},"color":"green"},{"text":" right_click","color":"gray"}]
