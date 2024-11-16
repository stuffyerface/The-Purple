scoreboard players set @s actionbar 20
title @s actionbar [{"color":"red","translate":"message.purple.spectator_ability.cooldown2","fallback":"Your §fSpectator Ability§r is on cooldown for %s","with":[[{"score":{"objective":"spectator_ability_timer","name":"@s"},"color":"yellow"},{"translate":"setting.purple.button.seconds","fallback":"s"}]]}]
playsound minecraft:entity.villager.no player @s ~ ~ ~ 0.5 1.5
