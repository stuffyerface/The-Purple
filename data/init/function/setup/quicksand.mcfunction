# rope
#fill 16 23 1071 16 20 1071 air
#execute positioned 16 23 1071 run function c:build/quicksand_rope_1
#summon interaction 16 21.9 1074 {width:0.5f,height:1.1f,response:1b,Tags:["trap.quicksand.rope"]}
#summon interaction 16 22.9 1074.2 {width:0.5f,height:1.1f,response:1b,Tags:["trap.quicksand.rope"]}
#summon interaction 16 22.9 1074.5 {width:0.5f,height:1.1f,response:1b,Tags:["trap.quicksand.rope"]}

# quicksand
#execute positioned 13 19 1068 run clone ~ ~ ~ ~7 ~ ~9 ~ ~-4 ~
#execute positioned 13 15 1068 run fill ~ ~ ~ ~7 ~ ~9 command_block{auto:1b,Command:"/summon block_display ~-0.5 ~3.25 ~-0.5 {Tags:[\"trap.quicksand.block\"],block_state:{Name:\"minecraft:nether_wart_block\"}}"} replace nether_wart_block
#execute positioned 13 15 1068 run fill ~ ~ ~ ~7 ~ ~9 command_block{auto:1b,Command:"/summon block_display ~-0.5 ~3.25 ~-0.5 {Tags:[\"trap.quicksand.block\"],block_state:{Name:\"minecraft:black_glazed_terracotta\"}}"} replace black_glazed_terracotta
#setblock 13 14 1068 command_block{auto:1b,Command:"/fill ~ ~ ~ ~7 ~1 ~9 air"}

#execute positioned 13 16 1068 run fill ~ ~ ~ ~7 ~ ~9 bedrock
#execute positioned 13 17 1068 run fill ~ ~ ~ ~7 ~ ~9 soul_sand
#execute positioned 13 18 1068 run fill ~ ~ ~ ~7 ~ ~9 cobweb
#execute positioned 13 19 1068 run fill ~ ~ ~ ~7 ~ ~9 air replace nether_wart_block
#execute positioned 13 19 1068 run fill ~ ~ ~ ~7 ~ ~9 air replace black_glazed_terracotta

