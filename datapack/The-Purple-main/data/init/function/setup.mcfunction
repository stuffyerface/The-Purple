## adds base systems to the world

# miscellaneous
tellraw @a[tag=debug] ["[Console] ",{"text":"Setup complete.","color":"green"}]
setworldspawn -23 16 -5
time set 14000
function init:load_items
function init:setup/rock
bossbar add main:time ""
bossbar set main:time color purple
team add hide_nametag
team modify hide_nametag nametagVisibility never
team modify hide_nametag collisionRule never

# create scoreboards
scoreboard objectives add title dummy {"translate":"setting.purple.title.main","fallback":"%s","with":[[{"color":"#AA00AA","text":"T"},{"color":"#B317AE","text":"h"},{"color":"#BD2DB2","text":"e "},{"color":"#C644B5","text":"P"},{"color":"#D05BB9","text":"u"},{"color":"#D971BD","text":"r"},{"color":"#E388C1","text":"p"},{"color":"#EC9FC4","text":"l"},{"color":"#FFCCCC","text":"e"}]],"color":"dark_purple","bold":true}
scoreboard objectives add data dummy
scoreboard objectives add dummy dummy
scoreboard objectives add settings dummy
scoreboard objectives add disable dummy
scoreboard objectives add quicksand dummy
scoreboard objectives add age dummy
scoreboard objectives add disconnect dummy
scoreboard objectives add id dummy
scoreboard objectives add clone_id dummy
scoreboard objectives add preview dummy
scoreboard objectives add tagback_timer dummy
scoreboard objectives add tagback_uuid.0 dummy
scoreboard objectives add tagback_uuid.1 dummy
scoreboard objectives add double_tap dummy
scoreboard objectives add double_tap_uuid.0 dummy
scoreboard objectives add double_tap_uuid.1 dummy
scoreboard objectives add uuid.thrower.0 dummy
scoreboard objectives add uuid.thrower.1 dummy
scoreboard objectives add animation dummy
scoreboard objectives add logo dummy
scoreboard objectives add actionbar dummy
scoreboard objectives add teleport_lock dummy
scoreboard objectives add infected dummy
scoreboard objectives add return_to_lobby_confirm dummy
scoreboard objectives add spectate_confirm dummy
scoreboard objectives add spectator dummy
scoreboard objectives add spectator_ability dummy
scoreboard objectives add spectator_ability_timer dummy
scoreboard objectives add source_ability dummy
scoreboard objectives add source_ability_timer dummy
scoreboard objectives add source_ability.corruption dummy
scoreboard objectives add source_ability.reach dummy
scoreboard objectives add color dummy
scoreboard objectives add death_effect dummy
scoreboard objectives add victory_dance dummy
scoreboard objectives add item dummy
scoreboard objectives add lobby.border dummy
scoreboard objectives add outside_map dummy
scoreboard objectives add top_secret dummy
scoreboard objectives add footsteps minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add relog minecraft.custom:minecraft.leave_game
scoreboard objectives add sound.darkness dummy
scoreboard objectives add animation.contributor_display dummy
scoreboard objectives add cooldown.item.ready dummy
scoreboard objectives add cooldown.item.not_ready dummy
scoreboard objectives add cooldown.furniture.contributor_display.stuffy dummy
scoreboard objectives add cooldown.furniture.contributor_display.nightlibra dummy
scoreboard objectives add cooldown.locator_bar dummy
scoreboard objectives add stat.total_games dummy
scoreboard objectives add stat.total_wins dummy
scoreboard objectives add stat.total_rounds dummy
scoreboard objectives add stat.total_deaths dummy
scoreboard objectives add stat.total_deaths_by_round dummy
scoreboard objectives add stat.total_deaths_by_quicksand dummy
scoreboard objectives add stat.total_revives dummy
scoreboard objectives add stat.infection_received dummy
scoreboard objectives add stat.infection_passed dummy
scoreboard objectives add stat.used_elevator dummy
scoreboard objectives add stat.found_items dummy
scoreboard objectives add stat.item.small_mushroom dummy
scoreboard objectives add stat.item.glow_horn dummy
scoreboard objectives add stat.item.safety_vest dummy
scoreboard objectives add stat.item.freeze_time dummy
scoreboard objectives add stat.item.prison_key dummy
scoreboard objectives add stat.item.compass dummy
scoreboard objectives add stat.item.antidote dummy
scoreboard objectives add stat.item.instant_chorus_fruit minecraft.used:minecraft.chorus_fruit
scoreboard objectives add stat.item.totem_of_undying minecraft.used:minecraft.totem_of_undying
scoreboard objectives add stat.item.ender_pearl minecraft.used:minecraft.ender_pearl
scoreboard objectives add stat.item.trident minecraft.used:minecraft.trident
scoreboard objectives add stat.item.wind_charge minecraft.used:minecraft.wind_charge
scoreboard objectives add stat.item.smoke_bomb minecraft.used:minecraft.lingering_potion
scoreboard objectives add stat.item.revival_potion minecraft.used:minecraft.splash_potion
scoreboard objectives add stat.item.decoy minecraft.used:minecraft.villager_spawn_egg
scoreboard objectives add stat.item.rock dummy
scoreboard objectives add stat.item.edible_rock dummy
scoreboard objectives add stat.fish.glowing_minnow dummy
scoreboard objectives add stat.fish.squishscale dummy
scoreboard objectives add stat.fish.crimson_drifter dummy
scoreboard objectives add stat.fish.purple_shellfish dummy
scoreboard objectives add stat.fish.broken_fishing_rod dummy
scoreboard objectives add stat.fish.sunken_raft dummy
scoreboard objectives add stat.fish.discarded_fuel_rod dummy
scoreboard objectives add stat.fish.lost_soil_sample dummy
scoreboard objectives add stat.fish.old_brush dummy
scoreboard objectives add stat.fish.diving_mask dummy
scoreboard objectives add stat.fish.oxygen_tank dummy
scoreboard objectives add stat.fish.wetsuit_pants dummy
scoreboard objectives add stat.fish.wetsuit_fins dummy
scoreboard objectives setdisplay list stat.total_wins

# create triggers
scoreboard objectives add return trigger
scoreboard objectives add secret trigger

scoreboard objectives add setting.map trigger
scoreboard objectives add setting.round_length trigger
scoreboard objectives add setting.reduce_timer trigger
scoreboard objectives add setting.increase_timer trigger
scoreboard objectives add setting.starting_immunity trigger
scoreboard objectives add setting.double_tap trigger
scoreboard objectives add setting.tagback trigger
scoreboard objectives add setting.total_items trigger
scoreboard objectives add setting.item_spawn_percent trigger
scoreboard objectives add setting.infection_time trigger
scoreboard objectives add setting.winners trigger
scoreboard objectives add setting.players_ready_percent trigger
scoreboard objectives add setting.offline_time trigger
scoreboard objectives add setting.round_timer trigger
scoreboard objectives add setting.rope_clicks trigger
scoreboard objectives add setting.corruption_despawn_time trigger
scoreboard objectives add setting.reach trigger
scoreboard objectives add setting.round_teleport trigger
scoreboard objectives add setting.meteor_spawn_chance trigger
scoreboard objectives add setting.locator_bar trigger
scoreboard objectives add setting.max_rounds trigger

scoreboard objectives add ability.speed2 trigger
scoreboard objectives add ability.invisible trigger
scoreboard objectives add ability.darkness trigger
scoreboard objectives add ability.corruption trigger
scoreboard objectives add ability.reach trigger
scoreboard objectives add ability.clone trigger

scoreboard objectives add ability.fireworks trigger
scoreboard objectives add ability.speed trigger
scoreboard objectives add ability.teleport trigger
scoreboard objectives add ability.slime trigger
scoreboard objectives add ability.time trigger
scoreboard objectives add ability.item trigger

# set default settings
scoreboard players set .game data -1
scoreboard players set .elevator data 0
scoreboard players set .map settings 1
scoreboard players set .limit_ugly_fish settings 1
scoreboard players set .rock_dupe settings 0

scoreboard players set .round_length settings 60
scoreboard players set .reduce_timer settings 10
scoreboard players set .increase_timer settings 0
scoreboard players set .starting_immunity settings 3
scoreboard players set .double_tap settings 1
scoreboard players set .tagback settings 0
scoreboard players set .total_items settings 10
scoreboard players set .item_spawn_percent settings 75
scoreboard players set .infection_time settings 30
scoreboard players set .winners settings 1
scoreboard players set .players_ready_percent settings 100
scoreboard players set .offline_time settings 200
scoreboard players set .round_timer settings 1
scoreboard players set .rope_clicks settings 5
scoreboard players set .corruption_despawn_time settings 600
scoreboard players set .reach settings 3
scoreboard players set .round_teleport settings 5
scoreboard players set .meteor_spawn_chance settings 50
scoreboard players set .locator_bar settings 0
scoreboard players set .max_rounds settings 0

scoreboard players set .ability_speed2 settings 20
scoreboard players set .ability_invisible settings 20
scoreboard players set .ability_darkness settings 20
scoreboard players set .ability_corruption settings 20
scoreboard players set .ability_reach settings 20
scoreboard players set .ability_clone settings 20

scoreboard players set .ability_fireworks settings 15
scoreboard players set .ability_speed settings 15
scoreboard players set .ability_teleport settings 30
scoreboard players set .ability_slime settings 20
scoreboard players set .ability_time settings 60
scoreboard players set .ability_item settings 10

# set default items
scoreboard players set .item_SMALL_MUSHROOM settings 1
scoreboard players set .item_CHORUS_FRUIT settings 1
scoreboard players set .item_ENDER_PEARL settings 1
scoreboard players set .item_GLOW_HORN settings 1
scoreboard players set .item_TOTEM_OF_UNDYING settings 1
scoreboard players set .item_TRIDENT settings 1
scoreboard players set .item_SAFETY_VEST settings 1
scoreboard players set .item_PRISON_KEY settings 1
scoreboard players set .item_COMPASS settings 1
scoreboard players set .item_FREEZE_TIME settings 1
scoreboard players set .item_SMOKE_BOMB settings 1
scoreboard players set .item_ANTIDOTE settings 1
scoreboard players set .item_WIND_CHARGE settings 1
scoreboard players set .item_REVIVAL_POTION settings 1
scoreboard players set .item_DECOY settings 1
scoreboard players set .item_GAME_ROCK settings 0
execute unless data storage main:item random.common[{components:{"minecraft:custom_data":{id:"SMALL_MUSHROOM"}}}] run data modify storage main:item random.common append from storage main:item id.SMALL_MUSHROOM
execute unless data storage main:item random.common[{components:{"minecraft:custom_data":{id:"CHORUS_FRUIT"}}}] run data modify storage main:item random.common append from storage main:item id.CHORUS_FRUIT
execute unless data storage main:item random.common[{components:{"minecraft:custom_data":{id:"ENDER_PEARL"}}}] run data modify storage main:item random.common append from storage main:item id.ENDER_PEARL
execute unless data storage main:item random.common[{components:{"minecraft:custom_data":{id:"GLOW_HORN"}}}] run data modify storage main:item random.common append from storage main:item id.GLOW_HORN
execute unless data storage main:item random.common[{components:{"minecraft:custom_data":{id:"TOTEM_OF_UNDYING"}}}] run data modify storage main:item random.common append from storage main:item id.TOTEM_OF_UNDYING
execute unless data storage main:item random.common[{components:{"minecraft:custom_data":{id:"TRIDENT"}}}] run data modify storage main:item random.common append from storage main:item id.TRIDENT
execute unless data storage main:item random.common[{components:{"minecraft:custom_data":{id:"SAFETY_VEST"}}}] run data modify storage main:item random.common append from storage main:item id.SAFETY_VEST
execute unless data storage main:item random.common[{components:{"minecraft:custom_data":{id:"PRISON_KEY"}}}] run data modify storage main:item random.common append from storage main:item id.PRISON_KEY
execute unless data storage main:item random.common[{components:{"minecraft:custom_data":{id:"COMPASS"}}}] run data modify storage main:item random.common append from storage main:item id.COMPASS
execute unless data storage main:item random.common[{components:{"minecraft:custom_data":{id:"FREEZE_TIME"}}}] run data modify storage main:item random.common append from storage main:item id.FREEZE_TIME
execute unless data storage main:item random.common[{components:{"minecraft:custom_data":{id:"SMOKE_BOMB"}}}] run data modify storage main:item random.common append from storage main:item id.SMOKE_BOMB
execute unless data storage main:item random.common[{components:{"minecraft:custom_data":{id:"ANTIDOTE"}}}] run data modify storage main:item random.common append from storage main:item id.ANTIDOTE
execute unless data storage main:item random.common[{components:{"minecraft:custom_data":{id:"WIND_CHARGE"}}}] run data modify storage main:item random.common append from storage main:item id.WIND_CHARGE
execute unless data storage main:item random.common[{components:{"minecraft:custom_data":{id:"REVIVAL_POTION"}}}] run data modify storage main:item random.common append from storage main:item id.REVIVAL_POTION
execute unless data storage main:item random.common[{components:{"minecraft:custom_data":{id:"DECOY"}}}] run data modify storage main:item random.common append from storage main:item id.DECOY
execute unless data storage main:item random.common[{components:{"minecraft:custom_data":{id:"GAME_ROCK"}}}] run data modify storage main:item random.common append from storage main:item id.GAME_ROCK

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
gamerule allowEnteringNetherUsingPortals false

gamerule doImmediateRespawn true
gamerule enderPearlsVanishOnDeath true
gamerule keepInventory true

gamerule spawnRadius 0
gamerule randomTickSpeed 0

# setup title scoreboard
scoreboard objectives setdisplay sidebar title
scoreboard players set $line15 title 15
scoreboard players set $line14 title 14
scoreboard players set $line13 title 13
scoreboard players set $line12 title 12
scoreboard players set $line11 title 11
scoreboard players set $line10 title 10
scoreboard players set $line9 title 9
scoreboard players set $line8 title 8
scoreboard players set $line7 title 7
scoreboard players set $line6 title 6
scoreboard players set $line5 title 5
scoreboard players set $line4 title 4
scoreboard players set $line3 title 3
scoreboard players set $line2 title 2
scoreboard players set $line1 title 1
scoreboard players display name $line15 title {"text":"Loading...","color":"dark_gray"}
scoreboard players display name $line14 title "                   "
scoreboard players display name $line13 title ""
scoreboard players display name $line12 title ""
scoreboard players display name $line11 title ""
scoreboard players display name $line10 title ""
scoreboard players display name $line9 title ""
scoreboard players display name $line8 title ""
scoreboard players display name $line7 title ""
scoreboard players display name $line6 title ""
scoreboard players display name $line5 title ""
scoreboard players display name $line4 title ""
scoreboard players display name $line3 title {"translate":"scoreboard.purple.footer.1","fallback":"Made by Stuffy","color":"#555555"}
scoreboard players display name $line2 title {"translate":"scoreboard.purple.footer.2","fallback":" and nightlibra","color":"#555555"}
scoreboard players display name $line1 title {"translate":"scoreboard.purple.footer.3","fallback":"","color":"#555555"}
scoreboard players display numberformat $line15 title blank
scoreboard players display numberformat $line14 title blank
scoreboard players display numberformat $line13 title blank
scoreboard players display numberformat $line12 title blank
scoreboard players display numberformat $line11 title blank
scoreboard players display numberformat $line10 title blank
scoreboard players display numberformat $line9 title blank
scoreboard players display numberformat $line8 title blank
scoreboard players display numberformat $line7 title blank
scoreboard players display numberformat $line6 title blank
scoreboard players display numberformat $line5 title blank
scoreboard players display numberformat $line4 title blank
scoreboard players display numberformat $line3 title blank
scoreboard players display numberformat $line2 title blank
scoreboard players display numberformat $line1 title blank

# set basic values
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
