execute unless entity @n[tag=furniture.lost_artifact.potted_plant] run return run function main:message/lobby/lost_artifact_already_found

# give artifact
tag @s add artifact.potted_plant
give @s flower_pot[max_stack_size=1,item_name='{"fallback":"Potted Specimen","translate":"item.purple.artifact.potted_plant.name"}',lore=['{"color":"dark_gray","fallback":"Artifact","italic":false,"translate":"item.purple.artifact.lore"}'],rarity="uncommon",custom_data={id:"ARTIFACT_POTTED_PLANT"}] 1

# cleanup
scoreboard players set @s actionbar 50
title @s actionbar {"translate":"message.purple.lobby.lost_artifact.found","fallback":"You found the %s artifact!","with":[{"translate":"item.purple.artifact.potted_plant.name","fallback":"Potted Specimen","color":"yellow"}],"color":"#76776F"}
tellraw @a {"translate":"message.purple.lobby.lost_artifact.announce","fallback":"%s found the %s artifact!","with":[{"selector":"@s"},{"translate":"item.purple.artifact.potted_plant.name","fallback":"Potted Specimen","color":"yellow"}],"color":"#76776F"}
playsound minecraft:entity.armor_stand.break block @a ~ ~ ~ 1 1.5
kill @e[tag=furniture.lost_artifact.potted_plant]
