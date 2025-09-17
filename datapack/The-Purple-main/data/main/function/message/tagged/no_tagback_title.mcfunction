# 
title @s times 0 50t 0
title @s title {"translate":"message.purple.corrupted.tagback.title","fallback":"No Tagbacks!","color":"red"}
playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 1 1.5

# 
tag @s add just_tagged
execute if score .tagback settings matches -1 on attacker run title @p[tag=just_tagged] subtitle {"translate":"message.purple.corrupted.tagback.subtitle.1","fallback":"You can't tag %s back!","color":"red","with":[{"selector":"@s"}]}
execute if score .tagback settings matches 1.. on attacker run title @p[tag=just_tagged] subtitle {"translate":"message.purple.corrupted.tagback.subtitle.2","fallback":"Wait %s to tag %s back!","color":"red","with":[[{"score":{"name":"@p[tag=just_tagged]","objective":"tagback_timer"},"color":"yellow"},{"translate":"setting.purple.button.seconds","fallback":"s"}],{"selector":"@s"}]}
tag @s remove just_tagged
