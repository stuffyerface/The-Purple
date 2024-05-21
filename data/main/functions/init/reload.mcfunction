#> Instantiate scoreboards
scoreboard objectives add gameData dummy
scoreboard players set .foot gameData 0

scoreboard objectives add age dummy

scoreboard objectives add footsteps minecraft.custom:minecraft.sprint_one_cm
scoreboard players reset * footsteps

#> Alert server of reload.
tellraw @a {"text": "Datapack reloaded successfully.","color": "light_purple"}