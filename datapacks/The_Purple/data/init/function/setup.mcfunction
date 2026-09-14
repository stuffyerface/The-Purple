## adds base systems to the world

# load initialize data
function init:version
function init:initialize/region
function init:initialize/gamerule
function init:initialize/scoreboard
function init:initialize/setting
function init:initialize/sidebar
execute unless entity @n[tag=block.rock] run function init:initialize/rock

# miscellaneous
bossbar add main:time ""
bossbar set main:time color purple
team add no_collision
team modify no_collision collisionRule never
time set 14000
data merge storage main:data {setup:true}
tellraw @a[tag=debug] ["[Console] ",{text:"Setup complete.",color:"green"}]

# set basic values
execute unless score .game data matches -1.. run scoreboard players set .game data -1
scoreboard players add .elevator data 0
scoreboard players add .ready data 0
scoreboard players add .required data 0
scoreboard players add .total_games data 0
scoreboard players add .total_rounds data 0
scoreboard players add .total_deaths data 0
scoreboard players add .total_items data 0
scoreboard players add .total_fish data 0
scoreboard players add .total_artifacts data 0
scoreboard players add .alive data 0
scoreboard players add .players data 0
scoreboard players add .corrupted data 0
scoreboard players add .spectating data 0
scoreboard players add .round data 0
