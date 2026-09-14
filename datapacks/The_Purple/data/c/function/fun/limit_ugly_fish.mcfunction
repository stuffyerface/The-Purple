scoreboard players operation .compare dummy = .limit_ugly_fish settings
execute if score .compare dummy matches ..0 run scoreboard players set .limit_ugly_fish settings 1
execute if score .compare dummy matches 1.. run scoreboard players set .limit_ugly_fish settings 0

# feedback
tellraw @s {translate:'', fallback:'[Console] %s', with:[[{text:'Set .limit_ugly_fish to: '},{score:{objective:'settings', name:'.limit_ugly_fish'}, color:green},{text:' (default: 1)', color:gray}]]}
