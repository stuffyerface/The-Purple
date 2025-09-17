advancement revoke @s only main:triggers/items/rock

# find motion
execute positioned ~ ~1.5 ~ run summon marker ^ ^ ^0.0 {Tags:["rock.find_motion","rock.origin"]}
execute positioned ~ ~1.5 ~ run summon marker ^ ^ ^0.1 {Tags:["rock.find_motion","rock.motion"]}
execute store result score .origin_x dummy run data get entity @n[tag=rock.origin] Pos[0] 1000
execute store result score .origin_y dummy run data get entity @n[tag=rock.origin] Pos[1] 1000
execute store result score .origin_z dummy run data get entity @n[tag=rock.origin] Pos[2] 1000
execute store result score .motion_x dummy run data get entity @n[tag=rock.motion] Pos[0] 1000
execute store result score .motion_y dummy run data get entity @n[tag=rock.motion] Pos[1] 1000
execute store result score .motion_z dummy run data get entity @n[tag=rock.motion] Pos[2] 1000
kill @e[tag=rock.find_motion]

# set motion
data merge storage main:dummy {rock:{Owner:[I;0,0,0,0],Motion:[0.0d,0.0d,0.0d]}}
data modify storage main:dummy rock.Owner set from entity @s UUID
execute store result storage main:dummy rock.Motion[0] double 0.015 run scoreboard players operation .motion_x dummy -= .origin_x dummy
execute store result storage main:dummy rock.Motion[1] double 0.015 run scoreboard players operation .motion_y dummy -= .origin_y dummy
execute store result storage main:dummy rock.Motion[2] double 0.015 run scoreboard players operation .motion_z dummy -= .origin_z dummy

# throw!
execute positioned ~ ~1.6 ~ run function main:module/item/function/rock/throw_macro with storage main:dummy rock
