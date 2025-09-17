# decrease locator_bar by 1
execute if score .locator_bar settings matches ..0 run scoreboard players set .locator_bar settings 16
execute if score .locator_bar settings matches 1.. run scoreboard players remove .locator_bar settings 1
execute if score .locator_bar settings matches 17.. run scoreboard players set .locator_bar settings 15

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"locator_bar","color":"gray"},{"text":" to "},{"score":{"name":".locator_bar","objective":"settings"},"color":"green"},{"text":" right_click","color":"gray"}]
