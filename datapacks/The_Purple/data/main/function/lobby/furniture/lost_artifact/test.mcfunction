execute unless entity @n[tag=furniture.lost_artifact.test] run return run function main:message/lobby/lost_artifact_already_found

# give artifact
tag @s add artifact.test
loot give @s loot main:item/artifact_test
scoreboard players set artifact.test data 1

# cleanup
scoreboard players set @s actionbar 50
title @s actionbar {"translate":"message.purple.lobby.lost_artifact.found","fallback":"You found the %s artifact!","with":[{"translate":"item.purple.artifact.test.name","fallback":"Armor Stand","color":"yellow"}],"color":"#76776F"}
tellraw @a {"translate":"message.purple.lobby.lost_artifact.announce","fallback":"%s found the %s artifact!","with":[{"selector":"@s"},{"translate":"item.purple.artifact.test.name","fallback":"Armor Stand","color":"yellow"}],"color":"#76776F"}
playsound minecraft:entity.armor_stand.break block @a ~ ~ ~ 1 1.5
kill @e[tag=furniture.lost_artifact.test]
