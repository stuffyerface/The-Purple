execute if score @s quicksand matches 0 run title @s title [{"text":"","color":"green"},{"text":"_","color":"yellow"},{"text":"","color":"gray"}]
execute if score @s quicksand >= .rope_clicks settings run title @s times 0 20 0
execute if score @s quicksand >= .rope_clicks settings run title @s title [{"text":"_","color":"green"},{"text":"","color":"yellow"},{"text":"","color":"gray"}]