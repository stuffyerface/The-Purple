# toggle settings
scoreboard players set @s setting.round_length 90
scoreboard players set @s setting.reduce_timer 25
scoreboard players set @s setting.increase_timer 3
scoreboard players set @s setting.starting_immunity 0
scoreboard players set @s setting.double_tap 1
scoreboard players set @s setting.tagback 1
scoreboard players set @s setting.total_items 15
scoreboard players set @s setting.item_spawn_percent 100
scoreboard players set @s setting.infection_time 0
scoreboard players set @s setting.winners 1
scoreboard players set @s setting.offline_time 600
scoreboard players set @s setting.round_timer 0
scoreboard players set @s setting.rope_clicks 10
scoreboard players set @s setting.corruption_despawn_time 1200
scoreboard players set @s setting.reach 5
scoreboard players set @s setting.meteor_spawn_chance 100
scoreboard players set @s setting.locator_bar 1

# console log
tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"}," changed settings to preset ",{"text":"#2","color":"gray"}]
