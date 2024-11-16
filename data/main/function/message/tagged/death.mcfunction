title @s times 0 60 20
title @s title [{"translate":"message.purple.death.title","fallback":"You Died!","color":"dark_purple"}]
title @s actionbar [{"translate":"message.purple.death.actionbar","fallback":"You are now spectating the game.","color":"gray"}]
scoreboard players set @s actionbar 60

execute store result score @s dummy run random value 1..5
execute if score @s dummy matches 1 run title @s subtitle [{"translate":"message.purple.death.subtitle.1","fallback":"Better luck next time...","color":"red"}]
execute if score @s dummy matches 2 run title @s subtitle [{"translate":"message.purple.death.subtitle.2","fallback":"Very sad...","color":"red"}]
execute if score @s dummy matches 3 run title @s subtitle [{"translate":"message.purple.death.subtitle.3","fallback":"Try not to do that anymore ok?","color":"red"}]
execute if score @s dummy matches 4 run title @s subtitle [{"translate":"message.purple.death.subtitle.4","fallback":"I'm sure you'll win next time!","color":"red"}]
execute if score @s dummy matches 5 run title @s subtitle [{"translate":"message.purple.death.subtitle.5","fallback":"Next time you'll win for sure...","color":"red"}]
scoreboard players reset @s dummy

tag @s add death_message
execute at @s on attacker run tellraw @a[tag=player] [{"color":"gray","translate":"message.purple.death.attacked","fallback":"%s was §5corrupted§r while trying to escape %s!","with":[{"selector":"@p[tag=death_message]"},{"selector":"@s"}]}]
tag @s remove death_message
execute at @s on attacker run return 1
tellraw @a[tag=player] [{"color":"gray","translate":"message.purple.death","fallback":"%s was §5corrupted§r.","with":[{"selector":"@s"}]}]
