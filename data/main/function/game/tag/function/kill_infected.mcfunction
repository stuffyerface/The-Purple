execute unless entity @e[type=#main:player,tag=infected] run tellraw @a[tag=debug] ["[Console] ",{"text":"No infected found!","color":"red"}]

# check for totem
execute as @a[tag=infected,nbt={Inventory:[{id:"minecraft:totem_of_undying",Slot:-106b}]}] run tag @s add has_totem
execute as @a[tag=infected,nbt={SelectedItem:{id:"minecraft:totem_of_undying"}}] run tag @s add has_totem

# kill infected players without totem
execute as @a[tag=infected,tag=!has_totem] run advancement grant @s only main:advancement/1_gameplay/mission_failed
execute as @a[tag=infected,tag=!has_totem] run scoreboard players add @s stat.total_deaths_by_round 1
execute as @e[type=zombie,tag=infected,tag=!has_totem] run tag @s add spectator
execute as @e[type=zombie,tag=infected,tag=!has_totem] run function main:module/disconnect/sync/marker
execute as @e[type=#main:player,tag=infected,tag=!has_totem] at @s run function main:module/cosmetic/death_effect/activate
execute as @e[tag=disconnect.zombie,tag=infected,tag=!dying] run tp @s ~ -100 ~
execute as @e[tag=disconnect.zombie,tag=infected,tag=!dying] run kill @s

# finish totem
execute as @a[tag=has_totem] run damage @s 1000000
execute as @a[tag=has_totem] run function main:message/tagged/totem
execute as @a[tag=has_totem] run clear @s minecraft:popped_chorus_fruit[minecraft:custom_data={id:"THE_PURPLE"}]
execute as @a[tag=has_totem] run tag @s remove infected
execute as @a[tag=has_totem] run tag @s remove source
execute as @a[tag=has_totem] run tag @s add has_used_healing_items
execute as @a[tag=has_totem] run function main:module/disconnect/sync/marker
execute as @a[tag=has_totem] run function main:id/team/set_color
execute as @a[tag=has_totem] run tag @s remove has_totem
