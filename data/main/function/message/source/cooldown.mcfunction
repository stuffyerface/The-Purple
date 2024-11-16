scoreboard players set @s actionbar 30
title @s actionbar [{"color":"red","translate":"message.purple.source_ability.cooldown2","fallback":"Your §fCorrupted Ability§r is on cooldown for %s","with":[[{"score":{"objective":"source_ability_timer","name":"@s"},"color":"yellow"},{"translate":"setting.purple.button.seconds","fallback":"s"}]]}]
playsound minecraft:block.chorus_flower.death player @s ~ ~ ~ 0.8 2
