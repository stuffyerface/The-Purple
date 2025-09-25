scoreboard players operation .compare dummy = .rock_dupe settings
execute if score .compare dummy matches ..0 run scoreboard players set .rock_dupe settings 1
execute if score .compare dummy matches 1.. run scoreboard players set .rock_dupe settings 0

# feedback
tellraw @s {translate:'', fallback:'[Console] %s', with:[[{text:'Set .rock_dupe to: '},{score:{objective:'settings', name:'.rock_dupe'}, color:green},{text:' (default: 0)', color:gray}]]}
