execute as @e[tag=furniture.lost_artifact,tag=!noglow,distance=..2] run data merge entity @s {Glowing:1b}
execute as @a[distance=..5] unless score @s actionbar matches 0.. run title @s actionbar {"translate":"message.purple.lobby.lost_artifact.nearby","fallback":"An artifact is nearby!","color":"#76776F"}
