execute at @s run summon snowball ~ ~ ~ {Tags:["trap.quicksand.ride_new"],Silent:1b,NoAI:1b,NoGravity:1b,Item:{id:"minecraft:mangrove_button",count:1}}
ride @s mount @e[limit=1,sort=nearest,tag=trap.quicksand.ride_new]
data modify entity @e[tag=trap.quicksand.ride_new,limit=1] Tags set value ["trap.quicksand.ride"]