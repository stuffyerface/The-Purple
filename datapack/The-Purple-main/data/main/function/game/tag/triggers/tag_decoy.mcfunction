advancement revoke @s only main:triggers/game/tag_decoy

tag @s add tagged_a_decoy
execute as @e[type=minecraft:mannequin,tag=decoy] at @s on attacker if entity @s[tag=tagged_a_decoy] as @n[type=minecraft:mannequin,tag=decoy,dx=0] run tag @s add this_decoy
tag @s remove tagged_a_decoy

# if player
title @s times 0 60 10
title @s[tag=!infected] title {translate:'message.purple.item.decoy.1', fallback:'Shh!', color:dark_gray}
title @s[tag=!infected] subtitle {translate:'message.purple.item.decoy.2', fallback:"Its %s's decoy, don't tell anyone!", color:gray, with:[{selector:'@n[tag=this_decoy]'}]}
execute if entity @s[tag=!infected] run playsound minecraft:entity.armor_stand.break player @s ~ ~ ~ 1 1.33
execute if entity @s[tag=!infected] at @e[tag=this_decoy] run particle cloud ~ ~ ~ 0 0.7 0 0.05 10 force

# if source
title @s[tag=infected] title {translate:'message.purple.item.decoy.infected.1', fallback:'Decoy!', color:red}
title @s[tag=infected] subtitle {translate:'message.purple.item.decoy.infected.2', fallback:"You hit %s's decoy!", color:red, with:[{selector:'@n[tag=this_decoy]'}]}
execute if entity @s[tag=infected] run effect give @s minecraft:slowness 3 0
execute if entity @s[tag=infected] run effect give @s minecraft:darkness 3 0
execute if entity @s[tag=infected] run playsound minecraft:entity.armor_stand.break player @s ~ ~ ~ 1 1.33
execute if entity @s[tag=infected] at @e[tag=this_decoy] run particle cloud ~ ~ ~ 0 0.7 0 0.1 30 force
execute if entity @s[tag=infected] run kill @n[tag=this_decoy]

# clean up
tag @e[tag=this_decoy] remove this_decoy
