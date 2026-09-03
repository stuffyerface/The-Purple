execute unless entity @n[tag=furniture.lost_artifact.gears] run return run function main:message/lobby/lost_artifact_already_found

# give artifact
tag @s add artifact.gears
loot give @s loot main:item/artifact_gears
scoreboard players set artifact.gears data 1

# cleanup
scoreboard players set @s actionbar 50
title @s actionbar {"translate":"message.purple.lobby.lost_artifact.found","fallback":"You found the %s artifact!","with":[{"translate":"item.purple.artifact.gears.name","fallback":"Lost Gears","color":"yellow"}],"color":"#76776F"}
tellraw @a {"translate":"message.purple.lobby.lost_artifact.announce","fallback":"%s found the %s artifact!","with":[{"selector":"@s"},{"translate":"item.purple.artifact.gears.name","fallback":"Lost Gears","color":"yellow"}],"color":"#76776F"}
playsound minecraft:entity.armor_stand.break block @a ~ ~ ~ 1 1.5
kill @e[tag=furniture.lost_artifact.gears]
