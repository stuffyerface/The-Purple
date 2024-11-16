setblock ~ ~ ~ air
setblock ~ ~-1 ~ minecraft:mud_brick_wall
$summon block_display ~ ~ ~ {Tags:["block","block.$(block)_slab"],transformation:[1f,0f,0f,-0.5f,0f,1f,0f,-1f,0f,0f,1f,-0.5f,0f,0f,0f,1f],block_state:{Name:"minecraft:$(block)"}}
