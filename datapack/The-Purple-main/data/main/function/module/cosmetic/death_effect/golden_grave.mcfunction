tag @s add tombstone_text
execute align xyz run summon armor_stand ~0.5 ~ ~0.5 {Tags:["furniture","death_effect.grave","death_effect.grave_new"],Silent:1b,Invulnerable:1b,Small:1b,Marker:0b,Invisible:1b,PersistenceRequired:1b,DisabledSlots:4144959,Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:yellow_glazed_terracotta",Properties:{facing:"west"}},transformation:[0.5f,0.0f,0.0f,-0.25f,0.0f,0.5f,0.0f,-0.5f,0.0f,0.0f,0.5f,-0.25f,0.0f,0.0f,0.0f,1.0f],Tags:["furniture","death_effect.grave","death_effect.grave_new"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:yellow_glazed_terracotta",Properties:{facing:"south"}},transformation:[0.5f,0.0f,0.0f,-0.25f,0.0f,0.5f,0.0f,-1.0f,0.0f,0.0f,0.5f,-0.25f,0.0f,0.0f,0.0f,1.0f],Tags:["furniture","death_effect.grave","death_effect.grave_new"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gold_block",Properties:{type:"bottom"}},transformation:[0.5f,0.0f,0.0f,-0.25f,0.0f,0.5f,0.0f,-0.0f,0.0f,0.0f,0.5f,-0.25f,0.0f,0.0f,0.0f,1.0f],Tags:["furniture","death_effect.grave","death_effect.grave_new"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gold_block",Properties:{facing:"north",half:"top",shape:"straight"}},transformation:[0.5f,0.0f,0.0f,-0.25f,0.0f,0.25f,0.0f,-0.25f,0.0f,0.0f,0.5f,0.25f,0.0f,0.0f,0.0f,1.0f],Tags:["furniture","death_effect.grave","death_effect.grave_new"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gold_block",Properties:{facing:"south",half:"top",shape:"straight"}},transformation:[0.5f,0.0f,0.0f,-0.25f,0.0f,0.25f,0.0f,-0.25f,0.0f,0.0f,0.5f,-0.75f,0.0f,0.0f,0.0f,1.0f],Tags:["furniture","death_effect.grave","death_effect.grave_new"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gold_block",Properties:{type:"bottom"}},transformation:[0.5f,0.0f,0.0f,-0.25f,0.0f,0.25f,0.0f,-0.0f,0.0f,0.0f,0.5f,-0.75f,0.0f,0.0f,0.0f,1.0f],Tags:["furniture","death_effect.grave","death_effect.grave_new"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gold_block",Properties:{type:"bottom"}},transformation:[0.5f,0.0f,0.0f,-0.25f,0.0f,0.25f,0.0f,-0.0f,0.0f,0.0f,0.5f,0.25f,0.0f,0.0f,0.0f,1.0f],Tags:["furniture","death_effect.grave","death_effect.grave_new"]},{id:"minecraft:text_display",text:["",{"translate":"setting.purple.button.death_effect.grave.rip","fallback":"R.I.P","color":"black","bold":true},"\n",{"text":"         ","color":"black","strikethrough":true},"\n\n",{"selector":"@p[tag=tombstone_text]","color":"black"}],alignment:"center",background:0,line_width:100,shadow:0b,transformation:[0.0f,0.0f,0.0f,-0.25f,0.0f,0.2f,0.0f,0.1f,0.2f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,1.0f],Tags:["furniture","death_effect.grave","death_effect.grave_new"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:soul_soil"},transformation:[0.6f,0.0f,0.0f,-0.3f,0.0f,0.1f,0.0f,-1.0f,0.0f,0.0f,0.6f,-0.3f,0.0f,0.0f,0.0f,1.0f],Tags:["furniture","death_effect.grave","death_effect.grave_new"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:soul_soil"},transformation:[0.6f,0.0f,0.0f,-0.9f,0.0f,0.1f,0.0f,-1.0f,0.0f,0.0f,0.6f,-0.3f,0.0f,0.0f,0.0f,1.0f],Tags:["furniture","death_effect.grave","death_effect.grave_new"]}]}
execute rotated as @s as @e[tag=death_effect.grave_new] run rotate @s ~-90 0
tag @e[tag=death_effect.grave_new] remove death_effect.grave_new
tag @s remove tombstone_text

particle minecraft:sculk_soul ~ ~1.5 ~ 0 0 0 0.01 1 force
playsound minecraft:item.shovel.flatten master @a[distance=..30] ~ ~ ~ 0.5 0.5
playsound minecraft:block.nether_bricks.break master @a[distance=..30] ~ ~ ~ 2 0.5

summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block"]}
function main:module/cosmetic/setup_corrupt_block

function main:game/tag/function/player_kill
