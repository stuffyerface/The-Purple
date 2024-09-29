# rope #1
fill 29 -52 53 29 -49 53 air
execute positioned 29 -48.5 53 run function c:build/quicksand_rope_1
summon interaction 29 -50.1 56 {width:0.5f,height:1.1f,response:1b,Tags:["trap.quicksand.rope"]}
summon interaction 29 -49.1 56.2 {width:0.5f,height:1.1f,response:1b,Tags:["trap.quicksand.rope"]}
summon interaction 29 -49.1 56.5 {width:0.5f,height:1.1f,response:1b,Tags:["trap.quicksand.rope"]}

# quicksand
clone 26 -53 50 33 -53 59 26 -57 50
fill 26 -57 50 33 -57 59 command_block{auto:1b,Command:"/summon block_display ~-0.5 ~3.25 ~-0.5 {Tags:[\"trap.quicksand.block\"],block_state:{Name:\"minecraft:nether_wart_block\"}}"} replace nether_wart_block
fill 26 -57 50 33 -57 59 command_block{auto:1b,Command:"/summon block_display ~-0.5 ~3.25 ~-0.5 {Tags:[\"trap.quicksand.block\"],block_state:{Name:\"minecraft:black_glazed_terracotta\"}}"} replace black_glazed_terracotta
setblock 26 -58 50 command_block{auto:1b,Command:"/fill 26 -58 50 33 -57 59 air"}

fill 33 -56 59 26 -56 50 bedrock
fill 33 -55 59 26 -55 50 soul_sand
fill 33 -54 59 26 -54 50 cobweb
fill 26 -53 50 33 -53 59 air replace nether_wart_block
fill 26 -53 50 33 -53 59 air replace black_glazed_terracotta

