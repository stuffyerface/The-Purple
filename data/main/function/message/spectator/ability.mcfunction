# cooldown
execute if score @s spectator_ability_timer matches 0.. run return run title @s actionbar [{"color":"dark_gray","translate":"message.purple.spectator_ability.cooldown1","fallback":"Your §7Spectator Ability§r is on cooldown for %s","with":[[{"score":{"objective":"spectator_ability_timer","name":"@s"},"color":"yellow"},{"translate":"setting.purple.button.seconds","fallback":"s"}]]}]

# ability is ready message
execute if entity @s[gamemode=spectator] run return run title @s actionbar [{"translate":"message.purple.spectator_ability.gamemode","fallback":"Punch the air to activate your ability!","color":"green"}]
execute if entity @s[tag=!used_ability_before] run return run title @s actionbar [{"translate":"message.purple.ability.ready_first_time","fallback":"Right-click %s to use your ability!","with":[[{"color":"#AA00AA","text":"T"},{"color":"#B317AE","text":"h"},{"color":"#BD2DB2","text":"e "},{"color":"#C644B5","text":"P"},{"color":"#D05BB9","text":"u"},{"color":"#D971BD","text":"r"},{"color":"#E388C1","text":"p"},{"color":"#EC9FC4","text":"l"},{"color":"#FFCCCC","text":"e"}]],"color":"green"}]
execute if entity @s[tag=corrupted] run title @s actionbar [{"translate":"message.purple.spectator_ability.corrupted","fallback":"Your Spectator Ability is ready!","color":"green"}]
