# init:setup
execute unless data storage main:dummy setup run function init:setup
execute unless data storage main:dummy setup run data merge storage main:dummy {setup:1b}

# reset
scoreboard players reset * footsteps
scoreboard players reset * actionbar
scoreboard players reset * infected
scoreboard players reset * dummy

# recalculate
function main:game/tag/function/check_required
function init:load_items

# server message
tellraw @a ["[Console] ",{"color":"#AA00AA","text":"D"},{"color":"#AD07AB","text":"a"},{"color":"#B00FAC","text":"t"},{"color":"#B316AE","text":"a"},{"color":"#B61DAF","text":"p"},{"color":"#B924B0","text":"a"},{"color":"#BC2CB1","text":"c"},{"color":"#BF33B3","text":"k "},{"color":"#C23AB4","text":"r"},{"color":"#C542B5","text":"e"},{"color":"#C849B6","text":"l"},{"color":"#CB50B7","text":"o"},{"color":"#CE57B9","text":"a"},{"color":"#D15FBA","text":"d"},{"color":"#D566BB","text":"e"},{"color":"#D86DBC","text":"d "},{"color":"#DB75BD","text":"s"},{"color":"#DE7CBF","text":"u"},{"color":"#E183C0","text":"c"},{"color":"#E48AC1","text":"c"},{"color":"#E792C2","text":"e"},{"color":"#EA99C4","text":"s"},{"color":"#EDA0C5","text":"s"},{"color":"#F0A8C6","text":"f"},{"color":"#F3AFC7","text":"u"},{"color":"#F6B6C8","text":"l"},{"color":"#F9BDCA","text":"l"},{"color":"#FFCCCC","text":"y"}]
