execute if score .color infected matches 20.. run scoreboard players reset .color infected
scoreboard players add .color infected 1
execute if score .color infected matches 1..10 run title @s subtitle {"translate":"message.purple.game.corruption.infecting","fallback":"You're being infected!","color":"yellow"}
execute if score .color infected matches 11..20 run title @s subtitle {"translate":"message.purple.game.corruption.infecting","fallback":"You're being infected!","color":"red"}