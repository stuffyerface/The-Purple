# Slow down! Wait 0s to tag @p again!
execute if score .tagback settings matches 0.. run title @s actionbar [{"color":"red","translate":"message.purple.corrupted.tagback","fallback":"Slow down! Wait %2$s to tag %s again!","with":[{"selector":"@n[type=#main:player,dx=0]"},[{"score":{"objective":"tagback_timer","name":"@s"},"color":"yellow"},{"translate":"setting.purple.button.seconds","fallback":"s"}]]}]

# You can't tag @p back! Find someone else!
execute if score .tagback settings matches -1 run title @s actionbar [{"color":"red","translate":"message.purple.corrupted.no_tagback","fallback":"You can't tag %s back! Find someone else!","with":[{"selector":"@n[type=#main:player,dx=0]"}]}]
scoreboard players set @s actionbar 20
