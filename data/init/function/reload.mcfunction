#> Instantiate scoreboards
scoreboard players set .foot gameData 0
scoreboard players reset * footsteps
scoreboard players reset * actionbar
scoreboard players reset * dummy

#> Alert server of reload.
tellraw @a {"text": "Datapack reloaded successfully.","color": "light_purple"}