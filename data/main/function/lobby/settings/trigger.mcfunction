tellraw @s[tag=debug] [{"text":"[Console] "},{"text":"Entered settings board boundries.","color":"green"}]

tag @s add within_setting_board_boundries
attribute @s minecraft:player.entity_interaction_range modifier add main:setting_board 3 add_value

scoreboard players enable @s setting.double_tap
scoreboard players enable @s setting.increase_timer
scoreboard players enable @s setting.offline_time
scoreboard players enable @s setting.rope_clicks
scoreboard players enable @s setting.round_length
scoreboard players enable @s setting.starting_immunity
scoreboard players enable @s setting.tagback

scoreboard players set @s setting.double_tap -2147483648
scoreboard players set @s setting.increase_timer -2147483648
scoreboard players set @s setting.offline_time -2147483648
scoreboard players set @s setting.rope_clicks -2147483648
scoreboard players set @s setting.round_length -2147483648
scoreboard players set @s setting.starting_immunity -2147483648
scoreboard players set @s setting.tagback -2147483648
