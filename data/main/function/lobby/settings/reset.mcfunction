tellraw @s[tag=debug] [{"text":"[Console] "},{"text":"Left settings board boundries.","color":"red"}]

tag @s remove within_setting_board_boundries
attribute @s minecraft:player.entity_interaction_range modifier remove main:setting_board

scoreboard players reset @s setting.double_tap
scoreboard players reset @s setting.increase_timer
scoreboard players reset @s setting.offline_time
scoreboard players reset @s setting.rope_clicks
scoreboard players reset @s setting.round_length
scoreboard players reset @s setting.starting_immunity
scoreboard players reset @s setting.tagback
