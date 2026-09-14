# set default settings
execute unless score .map settings matches 0..3 run scoreboard players set .map settings 1
execute unless score .experimental settings matches 0..1 run scoreboard players set .experimental settings 0

# set default: miscellaneous settings
execute unless score .limit_ugly_fish settings matches 0..1 run scoreboard players set .limit_ugly_fish settings 1
execute unless score .rock_dupe settings matches 0..1 run scoreboard players set .rock_dupe settings 0
execute unless score .boat_lifetime settings matches 0.. run scoreboard players set .boat_lifetime settings 3600
execute unless score .artifact_lifetime settings matches 0.. run scoreboard players set .artifact_lifetime settings 0

# set default: game settings
execute unless score .round_length settings matches 0..1800 run scoreboard players set .round_length settings 60
execute unless score .reduce_timer settings matches 0..100 run scoreboard players set .reduce_timer settings 10
execute unless score .increase_timer settings matches 0..300 run scoreboard players set .increase_timer settings 0
execute unless score .starting_immunity settings matches 0..300 run scoreboard players set .starting_immunity settings 3
execute unless score .double_tap settings matches 1..100 run scoreboard players set .double_tap settings 1
execute unless score .tagback settings matches -1..300 run scoreboard players set .tagback settings 0
execute unless score .total_items settings matches 0..100 run scoreboard players set .total_items settings 10
execute unless score .item_spawn_percent settings matches 0..100 run scoreboard players set .item_spawn_percent settings 75
execute unless score .infection_time settings matches -1..125 run scoreboard players set .infection_time settings 30
execute unless score .winners settings matches 0..100 run scoreboard players set .winners settings 1
execute unless score .players_ready_percent settings matches 0..100 run scoreboard players set .players_ready_percent settings 100
execute unless score .offline_time settings matches 0..36000 run scoreboard players set .offline_time settings 200
execute unless score .round_timer settings matches 0..1 run scoreboard players set .round_timer settings 1
execute unless score .rope_clicks settings matches 1..100 run scoreboard players set .rope_clicks settings 5
execute unless score .corruption_despawn_time settings matches 0..10000 run scoreboard players set .corruption_despawn_time settings 600
execute unless score .cobweb_despawn_time settings matches 0.. run scoreboard players set .cobweb_despawn_time settings 200
execute unless score .reach settings matches 1..100 run scoreboard players set .reach settings 3
execute unless score .round_teleport settings matches 0..100 run scoreboard players set .round_teleport settings 5
execute unless score .meteor_spawn_chance settings matches 0..100 run scoreboard players set .meteor_spawn_chance settings 50
execute unless score .locator_bar settings matches 0..1000 run scoreboard players set .locator_bar settings 0
execute unless score .max_rounds settings matches 0..1000 run scoreboard players set .max_rounds settings 0

# set default: ability cooldown settings
execute unless score .ability_speed2 settings matches 1..300 run scoreboard players set .ability_speed2 settings 20
execute unless score .ability_invisible settings matches 1..300 run scoreboard players set .ability_invisible settings 20
execute unless score .ability_darkness settings matches 1..300 run scoreboard players set .ability_darkness settings 20
execute unless score .ability_corruption settings matches 1..300 run scoreboard players set .ability_corruption settings 20
execute unless score .ability_reach settings matches 1..300 run scoreboard players set .ability_reach settings 20
execute unless score .ability_clone settings matches 1..300 run scoreboard players set .ability_clone settings 20

execute unless score .ability_fireworks settings matches 1..300 run scoreboard players set .ability_fireworks settings 15
execute unless score .ability_speed settings matches 1..300 run scoreboard players set .ability_speed settings 15
execute unless score .ability_teleport settings matches 1..300 run scoreboard players set .ability_teleport settings 30
execute unless score .ability_slime settings matches 1..300 run scoreboard players set .ability_slime settings 20
execute unless score .ability_time settings matches 1..300 run scoreboard players set .ability_time settings 60
execute unless score .ability_item settings matches 1..300 run scoreboard players set .ability_item settings 10

# set default: item settings
execute unless score .item_SMALL_MUSHROOM settings matches 0..1 run scoreboard players set .item_SMALL_MUSHROOM settings 1
execute unless score .item_INSTANT_CHORUS_FRUIT settings matches 0..1 run scoreboard players set .item_INSTANT_CHORUS_FRUIT settings 1
execute unless score .item_ENDER_PEARL settings matches 0..1 run scoreboard players set .item_ENDER_PEARL settings 1
execute unless score .item_GLOW_HORN settings matches 0..1 run scoreboard players set .item_GLOW_HORN settings 1
execute unless score .item_TOTEM_OF_UNDYING settings matches 0..1 run scoreboard players set .item_TOTEM_OF_UNDYING settings 1
execute unless score .item_TRIDENT settings matches 0..1 run scoreboard players set .item_TRIDENT settings 1
execute unless score .item_SAFETY_VEST settings matches 0..1 run scoreboard players set .item_SAFETY_VEST settings 1
execute unless score .item_PRISON_KEY settings matches 0..1 run scoreboard players set .item_PRISON_KEY settings 1
execute unless score .item_COMPASS settings matches 0..1 run scoreboard players set .item_COMPASS settings 1
execute unless score .item_FREEZE_TIME settings matches 0..1 run scoreboard players set .item_FREEZE_TIME settings 1
execute unless score .item_SMOKE_BOMB settings matches 0..1 run scoreboard players set .item_SMOKE_BOMB settings 1
execute unless score .item_ANTIDOTE settings matches 0..1 run scoreboard players set .item_ANTIDOTE settings 1
execute unless score .item_WIND_CHARGE settings matches 0..1 run scoreboard players set .item_WIND_CHARGE settings 1
execute unless score .item_REVIVAL_POTION settings matches 0..1 run scoreboard players set .item_REVIVAL_POTION settings 1
execute unless score .item_DECOY settings matches 0..1 run scoreboard players set .item_DECOY settings 1
execute unless score .item_KNOCKBACK_SLIMEBALL settings matches 0..1 run scoreboard players set .item_KNOCKBACK_SLIMEBALL settings 1
execute unless score .item_GAME_FISHING_ROD settings matches 0..1 run scoreboard players set .item_GAME_FISHING_ROD settings 1
execute unless score .item_COBWEB settings matches 0..1 run scoreboard players set .item_COBWEB settings 1
execute unless score .item_GAME_ROCK settings matches 0..1 run scoreboard players set .item_GAME_ROCK settings 0
execute unless score .item_DRACONIC_ESSENCE settings matches 0..1 run scoreboard players set .item_DRACONIC_ESSENCE settings 0

# save default settings
execute unless data storage main:settings {setup:true} run data merge storage main:settings {setup:true}
execute unless data storage main:settings {setup:true} run function main:lobby/settings/save_default
