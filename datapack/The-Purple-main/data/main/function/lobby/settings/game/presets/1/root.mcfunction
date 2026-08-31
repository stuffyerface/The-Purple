# toggle settings
execute store result score @s setting.corruption_despawn_time run data get storage main:settings default.corruption_despawn_time
execute store result score @s setting.double_tap run data get storage main:settings default.double_tap
execute store result score @s setting.increase_timer run data get storage main:settings default.increase_timer
execute store result score @s setting.infection_time run data get storage main:settings default.infection_time
execute store result score @s setting.item_spawn_percent run data get storage main:settings default.item_spawn_percent
execute store result score @s setting.locator_bar run data get storage main:settings default.locator_bar
execute store result score @s setting.max_rounds run data get storage main:settings default.max_rounds
execute store result score @s setting.meteor_spawn_chance run data get storage main:settings default.meteor_spawn_chance
execute store result score @s setting.offline_time run data get storage main:settings default.offline_time
execute store result score @s setting.players_ready_percent run data get storage main:settings default.players_ready_percent
execute store result score @s setting.reach run data get storage main:settings default.reach
execute store result score @s setting.reduce_timer run data get storage main:settings default.reduce_timer
execute store result score @s setting.rope_clicks run data get storage main:settings default.rope_clicks
execute store result score @s setting.round_length run data get storage main:settings default.round_length
execute store result score @s setting.round_teleport run data get storage main:settings default.round_teleport
execute store result score @s setting.round_timer run data get storage main:settings default.round_timer
execute store result score @s setting.starting_immunity run data get storage main:settings default.starting_immunity
execute store result score @s setting.tagback run data get storage main:settings default.tagback
execute store result score @s setting.total_items run data get storage main:settings default.total_items
execute store result score @s setting.winners run data get storage main:settings default.winners

execute store result score .item_SMALL_MUSHROOM settings run data get storage main:settings default.item_SMALL_MUSHROOM
execute store result score .item_CHORUS_FRUIT settings run data get storage main:settings default.item_CHORUS_FRUIT
execute store result score .item_ENDER_PEARL settings run data get storage main:settings default.item_ENDER_PEARL
execute store result score .item_GLOW_HORN settings run data get storage main:settings default.item_GLOW_HORN
execute store result score .item_TOTEM_OF_UNDYING settings run data get storage main:settings default.item_TOTEM_OF_UNDYING
execute store result score .item_TRIDENT settings run data get storage main:settings default.item_TRIDENT
execute store result score .item_SAFETY_VEST settings run data get storage main:settings default.item_SAFETY_VEST
execute store result score .item_PRISON_KEY settings run data get storage main:settings default.item_PRISON_KEY
execute store result score .item_COMPASS settings run data get storage main:settings default.item_COMPASS
execute store result score .item_FREEZE_TIME settings run data get storage main:settings default.item_FREEZE_TIME
execute store result score .item_SMOKE_BOMB settings run data get storage main:settings default.item_SMOKE_BOMB
execute store result score .item_ANTIDOTE settings run data get storage main:settings default.item_ANTIDOTE
execute store result score .item_WIND_CHARGE settings run data get storage main:settings default.item_WIND_CHARGE
execute store result score .item_REVIVAL_POTION settings run data get storage main:settings default.item_REVIVAL_POTION
execute store result score .item_DECOY settings run data get storage main:settings default.item_DECOY
execute store result score .item_GAME_ROCK settings run data get storage main:settings default.item_GAME_ROCK

data remove storage main:item random.common
execute if score .item_SMALL_MUSHROOM settings matches 1 run data modify storage main:item random.common append from storage main:item id.SMALL_MUSHROOM
execute if score .item_CHORUS_FRUIT settings matches 1 run data modify storage main:item random.common append from storage main:item id.CHORUS_FRUIT
execute if score .item_ENDER_PEARL settings matches 1 run data modify storage main:item random.common append from storage main:item id.ENDER_PEARL
execute if score .item_GLOW_HORN settings matches 1 run data modify storage main:item random.common append from storage main:item id.GLOW_HORN
execute if score .item_TOTEM_OF_UNDYING settings matches 1 run data modify storage main:item random.common append from storage main:item id.TOTEM_OF_UNDYING
execute if score .item_TRIDENT settings matches 1 run data modify storage main:item random.common append from storage main:item id.TRIDENT
execute if score .item_SAFETY_VEST settings matches 1 run data modify storage main:item random.common append from storage main:item id.SAFETY_VEST
execute if score .item_PRISON_KEY settings matches 1 run data modify storage main:item random.common append from storage main:item id.PRISON_KEY
execute if score .item_COMPASS settings matches 1 run data modify storage main:item random.common append from storage main:item id.COMPASS
execute if score .item_FREEZE_TIME settings matches 1 run data modify storage main:item random.common append from storage main:item id.FREEZE_TIME
execute if score .item_SMOKE_BOMB settings matches 1 run data modify storage main:item random.common append from storage main:item id.SMOKE_BOMB
execute if score .item_ANTIDOTE settings matches 1 run data modify storage main:item random.common append from storage main:item id.ANTIDOTE
execute if score .item_WIND_CHARGE settings matches 1 run data modify storage main:item random.common append from storage main:item id.WIND_CHARGE
execute if score .item_REVIVAL_POTION settings matches 1 run data modify storage main:item random.common append from storage main:item id.REVIVAL_POTION
execute if score .item_DECOY settings matches 1 run data modify storage main:item random.common append from storage main:item id.DECOY
execute if score .item_GAME_ROCK settings matches 1 run data modify storage main:item random.common append from storage main:item id.GAME_ROCK

# console log
tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"}," changed settings to preset ",{"text":"#1","color":"gray"}]
