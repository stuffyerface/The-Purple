execute if score @s quicksand matches 0 run title @s title [{"text":"","color":"green"},{"text":"_","color":"yellow"},{"text":"_____","color":"gray"}]
execute if score @s quicksand matches 1 run title @s title [{"text":"_","color":"green"},{"text":"_","color":"yellow"},{"text":"____","color":"gray"}]
execute if score @s quicksand matches 2 run title @s title [{"text":"__","color":"green"},{"text":"_","color":"yellow"},{"text":"___","color":"gray"}]
execute if score @s quicksand matches 3 run title @s title [{"text":"___","color":"green"},{"text":"_","color":"yellow"},{"text":"__","color":"gray"}]
execute if score @s quicksand matches 4 run title @s title [{"text":"____","color":"green"},{"text":"_","color":"yellow"},{"text":"_","color":"gray"}]
execute if score @s quicksand matches 5 run title @s title [{"text":"_____","color":"green"},{"text":"_","color":"yellow"},{"text":"","color":"gray"}]
execute if score @s quicksand >= .rope_clicks settings run title @s times 0 20 0
execute if score @s quicksand >= .rope_clicks settings run title @s title [{"text":"______","color":"green"},{"text":"","color":"yellow"},{"text":"","color":"gray"}]
