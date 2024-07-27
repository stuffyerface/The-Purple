# Slow down! Wait 0s to tag @p again!
execute if score .tagback settings matches 0.. run tellraw @s [{"text":"","color":"red"},{"text":"Slow down! Wait "},{"score":{"objective":"tagback_timer","name":"@s"},"color":"green"},{"text":"s","color":"green"},{"text":" to tag "},{"selector":"@n[type=#main:player,dx=0]"},{"text":" again!"}]

# You can't tag @p back! Find someone else!
execute if score .tagback settings matches -1 run tellraw @s [{"text":"","color":"red"},{"text":"You can't tag "},{"selector":"@n[type=#main:player,dx=0]"},{"text":" back! Find someone else!"}]
