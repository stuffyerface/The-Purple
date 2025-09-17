# toggle settings
scoreboard players set @s setting.round_length 60
scoreboard players set @s setting.reduce_timer 10
scoreboard players set @s setting.increase_timer 0
scoreboard players set @s setting.starting_immunity 3
scoreboard players set @s setting.double_tap 1
scoreboard players set @s setting.tagback 0
scoreboard players set @s setting.total_items 20
scoreboard players set @s setting.item_spawn_percent 100
scoreboard players set @s setting.infection_time 30
scoreboard players set @s setting.winners 0
scoreboard players set @s setting.offline_time 1200
scoreboard players set @s setting.round_timer 0
scoreboard players set @s setting.rope_clicks 5
scoreboard players set @s setting.corruption_despawn_time 600
scoreboard players set @s setting.reach 3
scoreboard players set @s setting.round_teleport 0
scoreboard players set @s setting.meteor_spawn_chance 50
scoreboard players set @s setting.locator_bar 20
scoreboard players set @s setting.max_rounds 100

scoreboard players set .item_SMALL_MUSHROOM settings 0
scoreboard players set .item_CHORUS_FRUIT settings 0
scoreboard players set .item_ENDER_PEARL settings 1
scoreboard players set .item_GLOW_HORN settings 0
scoreboard players set .item_TOTEM_OF_UNDYING settings 1
scoreboard players set .item_TRIDENT settings 0
scoreboard players set .item_SAFETY_VEST settings 0
scoreboard players set .item_PRISON_KEY settings 0
scoreboard players set .item_COMPASS settings 0
scoreboard players set .item_FREEZE_TIME settings 0
scoreboard players set .item_SMOKE_BOMB settings 0
scoreboard players set .item_ANTIDOTE settings 1
scoreboard players set .item_WIND_CHARGE settings 0
scoreboard players set .item_REVIVAL_POTION settings 1
scoreboard players set .item_DECOY settings 1
scoreboard players set .item_GAME_ROCK settings 1

data remove storage main:item random.common
data modify storage main:item random.common append from storage main:item id.ENDER_PEARL
data modify storage main:item random.common append from storage main:item id.TOTEM_OF_UNDYING
data modify storage main:item random.common append from storage main:item id.ANTIDOTE
data modify storage main:item random.common append from storage main:item id.REVIVAL_POTION
data modify storage main:item random.common append from storage main:item id.DECOY
data modify storage main:item random.common append from storage main:item id.GAME_ROCK

# console log
tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"}," changed settings to preset ",{"text":"#3","color":"gray"}]
