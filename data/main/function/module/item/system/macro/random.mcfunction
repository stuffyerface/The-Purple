$execute store result score .entry item run random value 1..$(total)
scoreboard players remove .entry item 1
execute store result storage main:item macro.entry int 1 run scoreboard players get .entry item
scoreboard players reset .entry item
