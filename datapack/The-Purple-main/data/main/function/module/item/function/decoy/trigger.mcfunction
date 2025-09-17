advancement revoke @s only main:triggers/items/decoy
playsound minecraft:entity.armor_stand.place player @s ~ ~ ~ 1 0.8

# summon decoy mannequin
execute at @n[tag=new_decoy] run summon minecraft:mannequin ~ ~ ~ {Tags:['new_decoy','new_decoy_mannequin','decoy','decoy_entity'], CustomName:{translate:'entity.purple.unknown_player', fallback:"Unknown Player", color:dark_purple}, CustomNameVisible:true, hide_description:true, Silent:true}

# sync decoy data
scoreboard players add .decoy_total clone_id 1
scoreboard players operation @e[tag=new_decoy] clone_id = .decoy_total clone_id
scoreboard players operation @e[tag=new_decoy] color = @s color
execute store result storage main:dummy ability.clone.id int 1 run scoreboard players get @s id
function main:module/item/function/decoy/join_team_macro with storage main:dummy ability.clone
function main:module/item/function/decoy/set_profile
execute as @n[tag=new_decoy_mannequin] run function main:module/cosmetic/space_helmet
#team join hide_nametag @n[type=villager,tag=new_decoy]

# clean up
tag @e[tag=new_decoy] remove new_decoy
tag @e[tag=new_decoy_mannequin] remove new_decoy_mannequin
