playsound minecraft:item.armor.equip_leather player @s ~ ~ ~ 0.5 1.25
execute unless entity @s[tag=in_quicksand] unless score @s quicksand matches 0.. run return run advancement revoke @s only main:triggers/game/quicksand
execute unless entity @s[nbt={RootVehicle:{Entity:{Tags:["trap.quicksand.ride"]}}}] run function main:module/quicksand/ride
execute unless score @s quicksand matches 0.. run scoreboard players set .start quicksand 1

# calculate if current click is odd (1) or even (0).
scoreboard players set .calc quicksand 2
scoreboard players operation .click quicksand = @s quicksand
scoreboard players operation .click quicksand %= .calc quicksand

# if last .click and current click are different buttons, add 1
execute unless score .start quicksand matches 1.. if score .click quicksand matches 1 if entity @s[advancements={main:triggers/game/quicksand={lc=true}}] run scoreboard players add .success quicksand 1
execute unless score .start quicksand matches 1.. if score .click quicksand matches 0 if entity @s[advancements={main:triggers/game/quicksand={rc=true}}] run scoreboard players add .success quicksand 1

execute if score .success quicksand matches 1.. on vehicle at @s facing entity @e[limit=1,sort=nearest,tag=trap.quicksand.rope] eyes run tp @s ^ ^ ^0.33
execute if score .success quicksand matches 1.. run scoreboard players add @s quicksand 1

# recalculate for newest click
scoreboard players operation .click quicksand = @s quicksand
scoreboard players operation .click quicksand %= .calc quicksand
scoreboard players reset .calc quicksand

# titles
title @s times 0 1200 0
execute if score .click quicksand matches 0 run title @s subtitle {"keybind":"key.use","color":"yellow"}
execute if score .click quicksand matches 1 run title @s subtitle {"keybind":"key.attack","color":"yellow"}

execute if score .rope_clicks settings matches ..1 run function main:module/quicksand/title/1
execute if score .rope_clicks settings matches 2 run function main:module/quicksand/title/2
execute if score .rope_clicks settings matches 3 run function main:module/quicksand/title/3
execute if score .rope_clicks settings matches 4 run function main:module/quicksand/title/4
execute if score .rope_clicks settings matches 5 run function main:module/quicksand/title/5
execute if score .rope_clicks settings matches 6 run function main:module/quicksand/title/6
execute if score .rope_clicks settings matches 7 run function main:module/quicksand/title/7
execute if score .rope_clicks settings matches 8 run function main:module/quicksand/title/8
execute if score .rope_clicks settings matches 9 run function main:module/quicksand/title/9
execute if score .rope_clicks settings matches 10.. run function main:module/quicksand/title/10

execute if score @s quicksand >= .rope_clicks settings run title @s subtitle {"text":"Success!","color":"green"}
execute if score @s quicksand >= .rope_clicks settings on vehicle at @e[limit=1,sort=nearest,tag=trap.quicksand.rope.1] run tp @s ~0.5 ~-1 ~0.5
execute if score @s quicksand >= .rope_clicks settings on vehicle run data merge entity @s {Motion:[-0.5d,0.3d,0.0d],NoGravity:0b}
execute if score @s quicksand >= .rope_clicks settings at @s run function main:module/quicksand/animation/whip

scoreboard players reset .start quicksand
scoreboard players reset .click quicksand
scoreboard players reset .success quicksand
execute if score @s quicksand >= .rope_clicks settings run scoreboard players reset @s quicksand
advancement revoke @s only main:triggers/game/quicksand