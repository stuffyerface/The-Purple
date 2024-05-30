<<<<<<< HEAD
##
## adds base systems to the world
##

## make sure the setup cant be run multiple times
#execute if data storage the_purple:main ran_setup run return run tellraw @a [{"text":"[Console] "},{"text":"Setup already completed!","color":"red"}]
data merge storage the_purple:main {ran_setup:1b}
tellraw @a[tag=debug] [{"text":"[Console] "},{"text":"Setup complete.","color":"green"}]

# scoreboards
scoreboard objectives add timer dummy
scoreboard objectives add settings dummy

scoreboard players set .round_length settings 60
scoreboard players set .starting_immunity settings 3
scoreboard players set .round_timer settings 1
scoreboard players set .tagback settings -1

# gamerules
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doFireTick false
gamerule doVinesSpread false
gamerule doInsomnia false
gamerule doTraderSpawning false
gamerule doPatrolSpawning false
gamerule doWardenSpawning false
gamerule doMobSpawning false
gamerule mobGriefing false
gamerule drowningDamage false
gamerule freezeDamage false
gamerule fireDamage false
gamerule fallDamage false
gamerule projectilesCanBreakBlocks false

gamerule doImmediateRespawn true
gamerule enderPearlsVanishOnDeath true
gamerule keepInventory true

=======
##
## adds base systems to the world
##

## make sure the setup cant be run multiple times
#execute if data storage the_purple:main ran_setup run return run tellraw @a [{"text":"[Console] "},{"text":"Setup already completed!","color":"red"}]
data merge storage the_purple:main {ran_setup:1b}
tellraw @a[tag=debug] [{"text":"[Console] "},{"text":"Setup complete.","color":"green"}]

# scoreboards
scoreboard objectives add timer dummy
scoreboard objectives add settings dummy

scoreboard players set .round_length settings 60
scoreboard players set .starting_immunity settings 3
scoreboard players set .round_timer settings 1
scoreboard players set .tagback settings -1

# gamerules
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doFireTick false
gamerule doVinesSpread false
gamerule doInsomnia false
gamerule doTraderSpawning false
gamerule doPatrolSpawning false
gamerule doWardenSpawning false
gamerule doMobSpawning false
gamerule mobGriefing false
gamerule drowningDamage false
gamerule freezeDamage false
gamerule fireDamage false
gamerule fallDamage false
gamerule projectilesCanBreakBlocks false

gamerule doImmediateRespawn true
gamerule enderPearlsVanishOnDeath true
gamerule keepInventory true

>>>>>>> 8e1a5a003a5a873d2b78300003709fbbb3c13948
gamerule spawnRadius 0