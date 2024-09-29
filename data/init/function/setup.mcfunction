##
## adds base systems to the world
##

tellraw @a[tag=debug] [{"text":"[Console] "},{"text":"Setup complete.","color":"green"}]

# do something cleaner with this later
#execute in test:build run summon text_display 3 -48 23 {billboard:"center",see_through:1b,alignment:"center",Tags:["preview"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},text:'{"bold":true,"color":"light_purple","text":"Return to Lobby"}',background:16711680}

# individual setups
# nothing here right now

# create scoreboards
scoreboard objectives add gameData dummy
scoreboard objectives add settings dummy
scoreboard objectives add timer dummy
scoreboard objectives add votestart dummy
scoreboard objectives add quicksand dummy
scoreboard objectives add age dummy
scoreboard objectives add disconnect dummy
scoreboard objectives add id dummy
scoreboard objectives add preview dummy
scoreboard objectives add tagback_timer dummy
scoreboard objectives add tagback_uuid.0 dummy
scoreboard objectives add tagback_uuid.1 dummy
scoreboard objectives add double_tap dummy
scoreboard objectives add animation dummy
scoreboard objectives add actionbar dummy
scoreboard objectives add dummy dummy
scoreboard objectives add footsteps minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add relog minecraft.custom:minecraft.leave_game

# create triggers
scoreboard objectives add setting.map trigger
scoreboard objectives add setting.double_tap trigger
scoreboard objectives add setting.increase_timer trigger
scoreboard objectives add setting.offline_time trigger
scoreboard objectives add setting.rope_clicks trigger
scoreboard objectives add setting.round_length trigger
scoreboard objectives add setting.starting_immunity trigger
scoreboard objectives add setting.tagback trigger


# set default settings
scoreboard players set .map settings 1
scoreboard players set .double_tap settings 1
scoreboard players set .increase_timer settings 0
scoreboard players set .offline_time settings 200
scoreboard players set .rope_clicks settings 5
scoreboard players set .round_length settings 60
scoreboard players set .round_timer settings 1
scoreboard players set .starting_immunity settings 3
scoreboard players set .tagback settings -1

# set gamerules
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

gamerule spawnRadius 0
gamerule randomTickSpeed 0