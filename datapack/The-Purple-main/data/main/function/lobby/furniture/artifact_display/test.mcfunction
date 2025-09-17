# common setup stuff
execute as @n[type=text_display,tag=lobby.artifact_display,tag=empty,distance=..2] run data merge entity @s {Tags:["lobby.artifact_display","full"],view_range:0f}
execute if entity @p[tag=artifact.test] run tellraw @a {"translate":"message.purple.lobby.lost_artifact.place","fallback":"%s placed the %s artifact!","with":[{"selector":"@p[tag=artifact.test]"},{"translate":"item.purple.artifact.test.name","fallback":"Armor Stand","color":"yellow"}],"color":"#76776F"}
execute unless entity @p[tag=artifact.test] run tellraw @a {"translate":"message.purple.lobby.lost_artifact.placed","fallback":"The %s artifact was placed!","with":[{"translate":"item.purple.artifact.test.name","fallback":"Armor Stand","color":"yellow"}],"color":"#76776F"}
tag @s remove empty
tag @s add full
tag @s add artifact.test
clear @p[tag=artifact.test] *[custom_data={id:"ARTIFACT_TEST"}]
tag @p[tag=artifact.test] remove artifact.test

# furniture model
summon armor_stand ~ ~ ~ {Tags:["furniture.artifact","furniture.artifact.test"],NoGravity:1b,Small:1b}

# stat tracking
scoreboard players add .total_artifacts data 1
scoreboard players set artifact.test data 2
