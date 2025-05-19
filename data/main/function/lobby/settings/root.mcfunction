execute at @n[tag=setting.board] positioned ~-4.5 ~-0.1 ~-0.505 unless entity @s[dx=8,dy=4,dz=4] run function main:lobby/settings/reset

execute if entity @s[scores={setting.round_length=-2147483647..}] run function main:lobby/settings/game/round_length/custom
execute if entity @s[scores={setting.reduce_timer=-2147483647..}] run function main:lobby/settings/game/reduce_timer/custom
execute if entity @s[scores={setting.increase_timer=-2147483647..}] run function main:lobby/settings/game/increase_timer/custom
execute if entity @s[scores={setting.starting_immunity=-2147483647..}] run function main:lobby/settings/game/starting_immunity/custom
execute if entity @s[scores={setting.double_tap=-2147483647..}] run function main:lobby/settings/game/double_tap/custom
execute if entity @s[scores={setting.tagback=-2147483647..}] run function main:lobby/settings/game/tagback/custom
execute if entity @s[scores={setting.total_items=-2147483647..}] run function main:lobby/settings/game/total_items/custom
execute if entity @s[scores={setting.item_spawn_percent=-2147483647..}] run function main:lobby/settings/game/item_spawn_percent/custom
execute if entity @s[scores={setting.infection_time=-2147483647..}] run function main:lobby/settings/game/infection_time/custom
execute if entity @s[scores={setting.winners=-2147483647..}] run function main:lobby/settings/game/winners/custom
execute if entity @s[scores={setting.players_ready_percent=-2147483647..}] run function main:lobby/settings/game/players_ready_percent/custom
execute if entity @s[scores={setting.offline_time=-2147483647..}] run function main:lobby/settings/game/offline_time/custom
execute if entity @s[scores={setting.round_timer=-2147483647..}] run function main:lobby/settings/game/round_timer/custom
execute if entity @s[scores={setting.rope_clicks=-2147483647..}] run function main:lobby/settings/game/rope_clicks/custom
execute if entity @s[scores={setting.corruption_despawn_time=-2147483647..}] run function main:lobby/settings/game/corruption_despawn_time/custom
execute if entity @s[scores={setting.reach=-2147483647..}] run function main:lobby/settings/game/reach/custom
execute if entity @s[scores={setting.round_teleport=-2147483647..}] run function main:lobby/settings/game/round_teleport/custom
execute if entity @s[scores={setting.meteor_spawn_chance=-2147483647..}] run function main:lobby/settings/game/meteor_spawn_chance/custom

execute if entity @s[scores={ability.speed2=-2147483647..}] run function main:lobby/settings/personal/source_ability/speed/custom
execute if entity @s[scores={ability.invisible=-2147483647..}] run function main:lobby/settings/personal/source_ability/invisible/custom
execute if entity @s[scores={ability.darkness=-2147483647..}] run function main:lobby/settings/personal/source_ability/darkness/custom
execute if entity @s[scores={ability.corruption=-2147483647..}] run function main:lobby/settings/personal/source_ability/corruption/custom
execute if entity @s[scores={ability.reach=-2147483647..}] run function main:lobby/settings/personal/source_ability/reach/custom
execute if entity @s[scores={ability.clone=-2147483647..}] run function main:lobby/settings/personal/source_ability/clone/custom

execute if entity @s[scores={ability.fireworks=-2147483647..}] run function main:lobby/settings/personal/spectator_ability/fireworks/custom
execute if entity @s[scores={ability.speed=-2147483647..}] run function main:lobby/settings/personal/spectator_ability/speed/custom
execute if entity @s[scores={ability.teleport=-2147483647..}] run function main:lobby/settings/personal/spectator_ability/teleport/custom
execute if entity @s[scores={ability.slime=-2147483647..}] run function main:lobby/settings/personal/spectator_ability/slime/custom
execute if entity @s[scores={ability.time=-2147483647..}] run function main:lobby/settings/personal/spectator_ability/time/custom
execute if entity @s[scores={ability.item=-2147483647..}] run function main:lobby/settings/personal/spectator_ability/item/custom

execute anchored eyes run function main:lobby/settings/outline/raycast