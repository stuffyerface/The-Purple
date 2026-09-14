execute at @s run summon spectral_arrow ~ ~ ~ {Tags:["trap.quicksand.ride_new"],Silent:1b,NoAI:1b,NoGravity:1b}
ride @s mount @n[tag=trap.quicksand.ride_new]
data modify entity @n[tag=trap.quicksand.ride_new,limit=1] Tags set value ["trap.quicksand.ride"]
