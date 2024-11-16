execute unless entity @n[tag=furniture.lost_artifact.frying_pan] run return run function main:message/lobby/lost_artifact_already_found

# give artifact
tag @s add artifact.frying_pan
give @s music_disc_strad[max_stack_size=1,item_name='{"fallback":"Frying Pan","translate":"item.purple.artifact.frying_pan.name"}',lore=['{"color":"dark_gray","fallback":"Artifact","italic":false,"translate":"item.purple.artifact.lore"}'],rarity="uncommon",custom_data={id:"ARTIFACT_FRYING_PAN"},jukebox_playable={song:"minecraft:strad",show_in_tooltip:false}] 1

# cleanup
scoreboard players set @s actionbar 50
title @s actionbar {"translate":"message.purple.lobby.lost_artifact.found","fallback":"You found the %s artifact!","with":[{"translate":"item.purple.artifact.frying_pan.name","fallback":"Frying Pan","color":"yellow"}],"color":"#76776F"}
tellraw @a {"translate":"message.purple.lobby.lost_artifact.announce","fallback":"%s found the %s artifact!","with":[{"selector":"@s"},{"translate":"item.purple.artifact.frying_pan.name","fallback":"Frying Pan","color":"yellow"}],"color":"#76776F"}
playsound minecraft:entity.armor_stand.break block @a ~ ~ ~ 1 1.5
kill @e[tag=furniture.lost_artifact.frying_pan]
