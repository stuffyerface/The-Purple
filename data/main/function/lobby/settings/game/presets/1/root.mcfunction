# toggle settings
scoreboard players set @s setting.round_length 60
scoreboard players set @s setting.reduce_timer 10
scoreboard players set @s setting.increase_timer 0
scoreboard players set @s setting.starting_immunity 3
scoreboard players set @s setting.double_tap 1
scoreboard players set @s setting.tagback 0
scoreboard players set @s setting.total_items 10
scoreboard players set @s setting.item_spawn_percent 40
scoreboard players set @s setting.infection_time 35
scoreboard players set @s setting.winners 1
scoreboard players set @s setting.players_ready_percent 100
scoreboard players set @s setting.offline_time 200
scoreboard players set @s setting.round_timer 1
scoreboard players set @s setting.rope_clicks 5
scoreboard players set @s setting.corruption_despawn_time 600
scoreboard players set @s setting.reach 3
scoreboard players set @s setting.round_teleport 5

# console log
tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"}," changed settings to preset ",{"text":"#1","color":"gray"}]
