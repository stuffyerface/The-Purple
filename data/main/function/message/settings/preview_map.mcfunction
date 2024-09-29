execute if score @s preview matches 1 run title @s actionbar [{"text":"Previewing Map: "},{"text":"Epic Map Name","color":"light_purple"}]
execute if score @s preview matches 2 run title @s actionbar [{"text":"Previewing Map: "},{"text":"Cool Map Name","color":"white"}]
execute if score @s preview matches 3 run title @s actionbar [{"text":"Previewing Map: "},{"text":"Awesome Map Name","color":"dark_green"}]
scoreboard players set @s actionbar 40
