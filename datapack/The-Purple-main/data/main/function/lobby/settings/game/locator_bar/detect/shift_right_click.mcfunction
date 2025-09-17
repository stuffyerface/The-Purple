# set locator_bar to 0
scoreboard players set .locator_bar settings 0

# console log
tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" set "},{"text":"locator_bar","color":"gray"},{"text":" to "},{"score":{"name":".locator_bar","objective":"settings"},"color":"green"},{"text":" shift_right_click","color":"gray"}]
