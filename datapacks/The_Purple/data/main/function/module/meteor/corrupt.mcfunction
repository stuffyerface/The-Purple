# manage
kill @s
particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.3 50 force
particle minecraft:block{block_state:"minecraft:purple_wool"} ~ ~1 ~ 2.5 2.5 2.5 0 250 force

# infect nearby players
execute as @a[sort=nearest,distance=..4,tag=player,tag=!infected,tag=!corrupted,gamemode=!spectator] at @s run function main:module/meteor/hit_player

# spread corruption
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
summon marker ~ ~ ~ {Tags:["new_corrupt_block","large"]}
function main:module/cosmetic/setup_corrupt_block
