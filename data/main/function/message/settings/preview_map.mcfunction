execute if entity @s[scores={actionbar=0..}] run return fail
execute if score @s preview matches 1 run title @s actionbar [{"translate":"message.purple.preview","fallback":"Previewing Map: %s","with":[{"translate":"setting.purple.title.map_1","fallback":"Scorched Basin","color":"light_purple"}]}]
execute if score @s preview matches 2 run title @s actionbar [{"translate":"message.purple.preview","fallback":"Previewing Map: %s","with":[{"translate":"setting.purple.title.map_2","fallback":"Impact Echoes","color":"blue"}]}]
execute if score @s preview matches 3 run title @s actionbar [{"translate":"message.purple.preview","fallback":"Previewing Map: %s","with":[{"translate":"setting.purple.title.map_3","fallback":"Map #3","color":"green"}]}]
