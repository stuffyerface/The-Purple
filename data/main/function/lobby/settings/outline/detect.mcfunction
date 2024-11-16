# hold current outlines
execute at @s positioned ~ ~0.3 ~1.75 as @e[type=text_display,tag=setting_ephemeral,limit=11,sort=nearest] run scoreboard players set @s age 0

# draw outlines
execute at @s if entity @s[tag=square_button] positioned ~ ~0.45 ~0.3 unless entity @e[tag=setting_outline,distance=..0.25,limit=1] positioned ~ ~-0.52 ~ run function main:lobby/settings/outline/draw_square
execute at @s if entity @s[tag=rectangle_button] positioned ~ ~0.3 ~1.6 unless entity @e[tag=setting_outline,distance=..0.5,limit=1] positioned ~ ~-0.375 ~ run function main:lobby/settings/outline/draw_rectangle
execute at @s if entity @s[tag=rectangle_setting] positioned ~ ~0.3 ~1.9 unless entity @e[tag=setting_outline,distance=..0.5,limit=1] positioned ~ ~-0.375 ~ run function main:lobby/settings/outline/draw_rectangle_setting

# add settings descriptions
execute if entity @s[tag=setting.game.round_length] unless entity @e[type=text_display,tag=setting.game.round_length.desc] at @n[type=text_display,tag=setting.game.round_length] run return run function main:lobby/settings/game/round_length/description
execute if entity @s[tag=setting.game.starting_immunity] unless entity @e[type=text_display,tag=setting.game.starting_immunity.desc] at @n[type=text_display,tag=setting.game.starting_immunity] run return run function main:lobby/settings/game/starting_immunity/description
execute if entity @s[tag=setting.game.offline_time] unless entity @e[type=text_display,tag=setting.game.offline_time.desc] at @n[type=text_display,tag=setting.game.offline_time] run return run function main:lobby/settings/game/offline_time/description
execute if entity @s[tag=setting.game.rope_clicks] unless entity @e[type=text_display,tag=setting.game.rope_clicks.desc] at @n[type=text_display,tag=setting.game.rope_clicks] run return run function main:lobby/settings/game/rope_clicks/description
execute if entity @s[tag=setting.game.round_timer] unless entity @e[type=text_display,tag=setting.game.round_timer.desc] at @n[type=text_display,tag=setting.game.round_timer] run return run function main:lobby/settings/game/round_timer/description
execute if entity @s[tag=setting.game.tagback] unless entity @e[type=text_display,tag=setting.game.tagback.desc] at @n[type=text_display,tag=setting.game.tagback] run return run function main:lobby/settings/game/tagback/description
execute if entity @s[tag=setting.game.increase_timer] unless entity @e[type=text_display,tag=setting.game.increase_timer.desc] at @n[type=text_display,tag=setting.game.increase_timer] run return run function main:lobby/settings/game/increase_timer/description
execute if entity @s[tag=setting.game.double_tap] unless entity @e[type=text_display,tag=setting.game.double_tap.desc] at @n[type=text_display,tag=setting.game.double_tap] run return run function main:lobby/settings/game/double_tap/description
execute if entity @s[tag=setting.game.total_items] unless entity @e[type=text_display,tag=setting.game.total_items.desc] at @n[type=text_display,tag=setting.game.total_items] run return run function main:lobby/settings/game/total_items/description
execute if entity @s[tag=setting.game.players_ready_percent] unless entity @e[type=text_display,tag=setting.game.players_ready_percent.desc] at @n[type=text_display,tag=setting.game.players_ready_percent] run return run function main:lobby/settings/game/players_ready_percent/description
execute if entity @s[tag=setting.game.item_spawn_percent] unless entity @e[type=text_display,tag=setting.game.item_spawn_percent.desc] at @n[type=text_display,tag=setting.game.item_spawn_percent] run return run function main:lobby/settings/game/item_spawn_percent/description
execute if entity @s[tag=setting.game.winners] unless entity @e[type=text_display,tag=setting.game.winners.desc] at @n[type=text_display,tag=setting.game.winners] run return run function main:lobby/settings/game/winners/description
execute if entity @s[tag=setting.game.infection_time] unless entity @e[type=text_display,tag=setting.game.infection_time.desc] at @n[type=text_display,tag=setting.game.infection_time] run return run function main:lobby/settings/game/infection_time/description
execute if entity @s[tag=setting.game.corruption_despawn_time] unless entity @e[type=text_display,tag=setting.game.corruption_despawn_time.desc] at @n[type=text_display,tag=setting.game.corruption_despawn_time] run return run function main:lobby/settings/game/corruption_despawn_time/description
execute if entity @s[tag=setting.game.reduce_timer] unless entity @e[type=text_display,tag=setting.game.reduce_timer.desc] at @n[type=text_display,tag=setting.game.reduce_timer] run return run function main:lobby/settings/game/reduce_timer/description
execute if entity @s[tag=setting.game.reach] unless entity @e[type=text_display,tag=setting.game.reach.desc] at @n[type=text_display,tag=setting.game.reach] run return run function main:lobby/settings/game/reach/description
execute if entity @s[tag=setting.game.round_teleport] unless entity @e[type=text_display,tag=setting.game.round_teleport.desc] at @n[type=text_display,tag=setting.game.round_teleport] run return run function main:lobby/settings/game/round_teleport/description

# add setting presets descriptions
execute if entity @s[tag=setting.presets.1] unless entity @e[type=text_display,tag=setting.presets.1.desc] at @n[type=text_display,tag=setting.presets.1] run return run function main:lobby/settings/game/presets/1/description
execute if entity @s[tag=setting.presets.2] unless entity @e[type=text_display,tag=setting.presets.2.desc] at @n[type=text_display,tag=setting.presets.2] run return run function main:lobby/settings/game/presets/2/description
execute if entity @s[tag=setting.presets.3] unless entity @e[type=text_display,tag=setting.presets.3.desc] at @n[type=text_display,tag=setting.presets.3] run return run function main:lobby/settings/game/presets/3/description
execute if entity @s[tag=setting.presets.4] unless entity @e[type=text_display,tag=setting.presets.4.desc] at @n[type=text_display,tag=setting.presets.4] run return run function main:lobby/settings/game/presets/4/description
execute if entity @s[tag=setting.presets.5] unless entity @e[type=text_display,tag=setting.presets.5.desc] at @n[type=text_display,tag=setting.presets.5] run return run function main:lobby/settings/game/presets/5/description
execute if entity @s[tag=setting.presets.6] unless entity @e[type=text_display,tag=setting.presets.6.desc] at @n[type=text_display,tag=setting.presets.6] run return run function main:lobby/settings/game/presets/6/description

# add spectator ability descriptions
execute if entity @s[tag=setting.spectator_ability.fireworks] unless entity @e[type=text_display,tag=setting.spectator_ability.fireworks.desc] at @n[type=text_display,tag=setting.spectator_ability.fireworks] run return run function main:lobby/settings/personal/spectator_ability/fireworks/description
execute if entity @s[tag=setting.spectator_ability.speed] unless entity @e[type=text_display,tag=setting.spectator_ability.speed.desc] at @n[type=text_display,tag=setting.spectator_ability.speed] run return run function main:lobby/settings/personal/spectator_ability/speed/description
execute if entity @s[tag=setting.spectator_ability.teleport] unless entity @e[type=text_display,tag=setting.spectator_ability.teleport.desc] at @n[type=text_display,tag=setting.spectator_ability.teleport] run return run function main:lobby/settings/personal/spectator_ability/teleport/description
execute if entity @s[tag=setting.spectator_ability.slime] unless entity @e[type=text_display,tag=setting.spectator_ability.slime.desc] at @n[type=text_display,tag=setting.spectator_ability.slime] run return run function main:lobby/settings/personal/spectator_ability/slime/description
execute if entity @s[tag=setting.spectator_ability.time] unless entity @e[type=text_display,tag=setting.spectator_ability.time.desc] at @n[type=text_display,tag=setting.spectator_ability.time] run return run function main:lobby/settings/personal/spectator_ability/time/description
execute if entity @s[tag=setting.spectator_ability.item] unless entity @e[type=text_display,tag=setting.spectator_ability.item.desc] at @n[type=text_display,tag=setting.spectator_ability.item] run return run function main:lobby/settings/personal/spectator_ability/item/description

# add corrupted ability descriptions
execute if entity @s[tag=setting.source_ability.speed] unless entity @e[type=text_display,tag=setting.source_ability.speed.desc] at @n[type=text_display,tag=setting.source_ability.speed] run return run function main:lobby/settings/personal/source_ability/speed/description
execute if entity @s[tag=setting.source_ability.invisible] unless entity @e[type=text_display,tag=setting.source_ability.invisible.desc] at @n[type=text_display,tag=setting.source_ability.invisible] run return run function main:lobby/settings/personal/source_ability/invisible/description
execute if entity @s[tag=setting.source_ability.darkness] unless entity @e[type=text_display,tag=setting.source_ability.darkness.desc] at @n[type=text_display,tag=setting.source_ability.darkness] run return run function main:lobby/settings/personal/source_ability/darkness/description
execute if entity @s[tag=setting.source_ability.corruption] unless entity @e[type=text_display,tag=setting.source_ability.corruption.desc] at @n[type=text_display,tag=setting.source_ability.corruption] run return run function main:lobby/settings/personal/source_ability/corruption/description
execute if entity @s[tag=setting.source_ability.reach] unless entity @e[type=text_display,tag=setting.source_ability.reach.desc] at @n[type=text_display,tag=setting.source_ability.reach] run return run function main:lobby/settings/personal/source_ability/reach/description

# add death effect descriptions
execute if entity @s[tag=setting.death_effect.explode] unless entity @e[type=text_display,tag=setting.death_effect.explode.desc] at @n[type=text_display,tag=setting.death_effect.explode] run return run function main:lobby/settings/personal/death_effect/explode/description
execute if entity @s[tag=setting.death_effect.shrink] unless entity @e[type=text_display,tag=setting.death_effect.shrink.desc] at @n[type=text_display,tag=setting.death_effect.shrink] run return run function main:lobby/settings/personal/death_effect/shrink/description
execute if entity @s[tag=setting.death_effect.grave] unless entity @e[type=text_display,tag=setting.death_effect.grave.desc] at @n[type=text_display,tag=setting.death_effect.grave] run return run function main:lobby/settings/personal/death_effect/grave/description

# add victory dance descriptions
execute if entity @s[tag=setting.victory_dance.fireworks] unless entity @e[type=text_display,tag=setting.victory_dance.fireworks.desc] at @n[type=text_display,tag=setting.victory_dance.fireworks] run return run function main:lobby/settings/personal/victory_dance/fireworks/description
execute if entity @s[tag=setting.victory_dance.rainbow_sheep] unless entity @e[type=text_display,tag=setting.victory_dance.rainbow_sheep.desc] at @n[type=text_display,tag=setting.victory_dance.rainbow_sheep] run return run function main:lobby/settings/personal/victory_dance/rainbow_sheep/description
execute if entity @s[tag=setting.victory_dance.horse] unless entity @e[type=text_display,tag=setting.victory_dance.horse.desc] at @n[type=text_display,tag=setting.victory_dance.horse] run return run function main:lobby/settings/personal/victory_dance/horse/description
