# increase locator_bar by 1
execute if score .locator_bar settings matches 15.. run scoreboard players set .locator_bar settings -1
execute if score .locator_bar settings matches ..14 run scoreboard players add .locator_bar settings 1
execute if score .locator_bar settings matches ..0 run scoreboard players set .locator_bar settings 0

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"locator_bar","color":"gray"},{"text":" to "},{"score":{"name":".locator_bar","objective":"settings"},"color":"green"},{"text":" left_click","color":"gray"}]
