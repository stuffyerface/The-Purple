tellraw @s[tag=debug] ["[Console] ",{"text":"Left settings board boundries.","color":"red"}]

tag @s remove within_setting_board_boundries
attribute @s minecraft:entity_interaction_range modifier remove main:setting_board
attribute @s minecraft:knockback_resistance modifier remove main:setting_board

scoreboard players reset @s setting.round_length
scoreboard players reset @s setting.reduce_timer
scoreboard players reset @s setting.increase_timer
scoreboard players reset @s setting.starting_immunity
scoreboard players reset @s setting.double_tap
scoreboard players reset @s setting.tagback
scoreboard players reset @s setting.total_items
scoreboard players reset @s setting.item_spawn_percent
scoreboard players reset @s setting.infection_time
scoreboard players reset @s setting.winners
scoreboard players reset @s setting.players_ready_percent
scoreboard players reset @s setting.offline_time
scoreboard players reset @s setting.round_timer
scoreboard players reset @s setting.rope_clicks
scoreboard players reset @s setting.corruption_despawn_time
scoreboard players reset @s setting.reach
scoreboard players reset @s setting.round_teleport
scoreboard players reset @s setting.meteor_spawn_chance

scoreboard players reset @s ability.speed2
scoreboard players reset @s ability.invisible
scoreboard players reset @s ability.darkness
scoreboard players reset @s ability.corruption
scoreboard players reset @s ability.reach
scoreboard players reset @s ability.clone
scoreboard players reset @s ability.fireworks
scoreboard players reset @s ability.speed
scoreboard players reset @s ability.teleport
scoreboard players reset @s ability.slime
scoreboard players reset @s ability.time
scoreboard players reset @s ability.item
