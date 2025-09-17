tellraw @s[tag=debug] [{"text":"[Console] "},{"text":"Entered settings board boundries.","color":"green"}]

tag @s add within_setting_board_boundries
attribute @s minecraft:entity_interaction_range modifier add main:setting_board 3 add_value
attribute @s minecraft:knockback_resistance modifier add main:setting_board 1 add_value

scoreboard players enable @s setting.round_length
scoreboard players enable @s setting.reduce_timer
scoreboard players enable @s setting.increase_timer
scoreboard players enable @s setting.starting_immunity
scoreboard players enable @s setting.double_tap
scoreboard players enable @s setting.tagback
scoreboard players enable @s setting.total_items
scoreboard players enable @s setting.item_spawn_percent
scoreboard players enable @s setting.infection_time
scoreboard players enable @s setting.winners
scoreboard players enable @s setting.players_ready_percent
scoreboard players enable @s setting.offline_time
scoreboard players enable @s setting.round_timer
scoreboard players enable @s setting.rope_clicks
scoreboard players enable @s setting.corruption_despawn_time
scoreboard players enable @s setting.reach
scoreboard players enable @s setting.round_teleport
scoreboard players enable @s setting.meteor_spawn_chance
scoreboard players enable @s ability.speed2
scoreboard players enable @s ability.invisible
scoreboard players enable @s ability.darkness
scoreboard players enable @s ability.corruption
scoreboard players enable @s ability.reach
scoreboard players enable @s ability.clone
scoreboard players enable @s ability.fireworks
scoreboard players enable @s ability.speed
scoreboard players enable @s ability.teleport
scoreboard players enable @s ability.slime
scoreboard players enable @s ability.time
scoreboard players enable @s ability.item

scoreboard players set @s setting.round_length -2147483648
scoreboard players set @s setting.reduce_timer -2147483648
scoreboard players set @s setting.increase_timer -2147483648
scoreboard players set @s setting.starting_immunity -2147483648
scoreboard players set @s setting.double_tap -2147483648
scoreboard players set @s setting.tagback -2147483648
scoreboard players set @s setting.total_items -2147483648
scoreboard players set @s setting.item_spawn_percent -2147483648
scoreboard players set @s setting.infection_time -2147483648
scoreboard players set @s setting.winners -2147483648
scoreboard players set @s setting.players_ready_percent -2147483648
scoreboard players set @s setting.offline_time -2147483648
scoreboard players set @s setting.round_timer -2147483648
scoreboard players set @s setting.rope_clicks -2147483648
scoreboard players set @s setting.corruption_despawn_time -2147483648
scoreboard players set @s setting.reach -2147483648
scoreboard players set @s setting.round_teleport -2147483648
scoreboard players set @s setting.meteor_spawn_chance -2147483648
scoreboard players set @s ability.speed2 -2147483648
scoreboard players set @s ability.invisible -2147483648
scoreboard players set @s ability.darkness -2147483648
scoreboard players set @s ability.corruption -2147483648
scoreboard players set @s ability.reach -2147483648
scoreboard players set @s ability.clone -2147483648
scoreboard players set @s ability.fireworks -2147483648
scoreboard players set @s ability.speed -2147483648
scoreboard players set @s ability.teleport -2147483648
scoreboard players set @s ability.slime -2147483648
scoreboard players set @s ability.time -2147483648
scoreboard players set @s ability.item -2147483648
