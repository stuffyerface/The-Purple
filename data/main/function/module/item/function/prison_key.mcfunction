advancement revoke @s only main:triggers/items/prison_key
execute if entity @n[tag=setting.board,distance=..10] on attacker run playsound minecraft:block.vault.insert_item_fail block @s ~ ~ ~ 1 1.5
execute if entity @n[tag=setting.board,distance=..10] on attacker run scoreboard players set @s actionbar 30
execute if entity @n[tag=setting.board,distance=..10] on attacker run return run title @s actionbar {"translate":"message.purple.item.disabled","fallback":"You can't use this here!","color":"red"}

execute on attacker unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"PRISON_KEY"}}}}] run clear @s minecraft:trial_key[minecraft:custom_data={id:"PRISON_KEY"}] 1
execute on attacker if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"PRISON_KEY"}}}}] store result score .item_count dummy run data get entity @s SelectedItem.count
execute on attacker if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"PRISON_KEY"}}}}] run scoreboard players remove .item_count dummy 1
execute on attacker if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"PRISON_KEY"}}}}] run item replace entity @s weapon.mainhand from entity @s weapon.mainhand main:set_count
execute on attacker run scoreboard players add @s stat.item.prison_key 1

function main:message/item/imprisoned
playsound minecraft:block.vault.close_shutter block @a[distance=..20] ~ ~ ~ 1 0.5
playsound minecraft:block.vault.insert_item_fail block @a[distance=..20] ~ ~ ~ 1 0.5
tp @s ~ ~1 ~

# select top
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1.00 ~3 ~-1.00 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.polished_tuff_slab.bottom"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0.000 ~3 ~-1.00 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.polished_tuff_slab.bottom"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1.000 ~3 ~-1.00 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.polished_tuff_slab.bottom"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1.00 ~3 ~0.000 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.polished_tuff_slab.bottom"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0.000 ~3 ~0.000 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.polished_tuff_slab.bottom"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1.000 ~3 ~0.000 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.polished_tuff_slab.bottom"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1.00 ~3 ~1.000 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.polished_tuff_slab.bottom"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0.000 ~3 ~1.000 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.polished_tuff_slab.bottom"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1.000 ~3 ~1.000 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.polished_tuff_slab.bottom"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1.00 ~3 ~-1.00 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.polished_tuff_slab.bottom"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0.000 ~3 ~-1.00 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.polished_tuff_slab.bottom"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1.000 ~3 ~-1.00 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.polished_tuff_slab.bottom"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1.00 ~3 ~0.000 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.polished_tuff_slab.bottom"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0.000 ~3 ~0.000 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.polished_tuff_slab.bottom"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1.000 ~3 ~0.000 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.polished_tuff_slab.bottom"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1.00 ~3 ~1.000 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.polished_tuff_slab.bottom"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0.000 ~3 ~1.000 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.polished_tuff_slab.bottom"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1.000 ~3 ~1.000 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.polished_tuff_slab.bottom"]}

# select iron bars
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1.00 ~1 ~-1.00 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0.000 ~1 ~-1.00 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1.000 ~1 ~-1.00 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1.00 ~1 ~0.000 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1.000 ~1 ~0.000 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1.00 ~1 ~1.000 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0.000 ~1 ~1.000 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1.000 ~1 ~1.000 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1.00 ~2 ~-1.00 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0.000 ~2 ~-1.00 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1.000 ~2 ~-1.00 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1.00 ~2 ~0.000 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1.000 ~2 ~0.000 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1.00 ~2 ~1.000 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0.000 ~2 ~1.000 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1.000 ~2 ~1.000 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1.00 ~1 ~-1.00 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0.000 ~1 ~-1.00 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1.000 ~1 ~-1.00 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1.00 ~1 ~0.000 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1.000 ~1 ~0.000 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1.00 ~1 ~1.000 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0.000 ~1 ~1.000 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1.000 ~1 ~1.000 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1.00 ~2 ~-1.00 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0.000 ~2 ~-1.00 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1.000 ~2 ~-1.00 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1.00 ~2 ~0.000 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1.000 ~2 ~0.000 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1.00 ~2 ~1.000 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0.000 ~2 ~1.000 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.iron_bars"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1.000 ~2 ~1.000 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.iron_bars"]}

# select bottom
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1.00 ~0 ~-1.00 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.chiseled_tuff"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0.000 ~0 ~-1.00 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.tuff_brick_stairs.north"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1.000 ~0 ~-1.00 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.chiseled_tuff"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1.00 ~0 ~0.000 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.tuff_brick_stairs.west"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0.000 ~0 ~0.000 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.tuff_brick_slab.bottom"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1.000 ~0 ~0.000 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.tuff_brick_stairs.east"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1.00 ~0 ~1.000 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.chiseled_tuff"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0.000 ~0 ~1.000 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.tuff_brick_stairs.south"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1.000 ~0 ~1.000 if block ~ ~ ~ #minecraft:air run summon marker ~ ~ ~ {Tags:["new_prison_block","prison_block_marker","prison_block.chiseled_tuff"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1.00 ~0 ~-1.00 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.chiseled_tuff"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0.000 ~0 ~-1.00 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.tuff_brick_stairs.north"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1.000 ~0 ~-1.00 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.chiseled_tuff"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1.00 ~0 ~0.000 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.tuff_brick_stairs.west"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0.000 ~0 ~0.000 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.tuff_brick_slab.bottom"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1.000 ~0 ~0.000 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.tuff_brick_stairs.east"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1.00 ~0 ~1.000 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.chiseled_tuff"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0.000 ~0 ~1.000 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.tuff_brick_stairs.south"]}
execute if entity @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1.000 ~0 ~1.000 if block ~ ~ ~ minecraft:water run summon marker ~ ~ ~ {Tags:["new_prison_block.water","prison_block_marker.water","prison_block_marker","prison_block.chiseled_tuff"]}

# fill selection
execute as @e[tag=new_prison_block,tag=prison_block.iron_bars] at @s run fill ~ ~ ~ ~ ~ ~ iron_bars replace #minecraft:air
execute as @e[tag=new_prison_block,tag=prison_block.chiseled_tuff] at @s run fill ~ ~ ~ ~ ~ ~ chiseled_tuff replace #minecraft:air
execute as @e[tag=new_prison_block,tag=prison_block.polished_tuff_slab.bottom] at @s run fill ~ ~ ~ ~ ~ ~ polished_tuff_slab[type=bottom] replace #minecraft:air
execute as @e[tag=new_prison_block,tag=prison_block.tuff_brick_slab.bottom] at @s run fill ~ ~ ~ ~ ~ ~ tuff_brick_slab[type=bottom] replace #minecraft:air
execute as @e[tag=new_prison_block,tag=prison_block.tuff_brick_stairs.north] at @s run fill ~ ~ ~ ~ ~ ~ tuff_brick_stairs[facing=north] replace #minecraft:air
execute as @e[tag=new_prison_block,tag=prison_block.tuff_brick_stairs.south] at @s run fill ~ ~ ~ ~ ~ ~ tuff_brick_stairs[facing=south] replace #minecraft:air
execute as @e[tag=new_prison_block,tag=prison_block.tuff_brick_stairs.east] at @s run fill ~ ~ ~ ~ ~ ~ tuff_brick_stairs[facing=east] replace #minecraft:air
execute as @e[tag=new_prison_block,tag=prison_block.tuff_brick_stairs.west] at @s run fill ~ ~ ~ ~ ~ ~ tuff_brick_stairs[facing=west] replace #minecraft:air
tag @e[tag=new_prison_block] remove new_prison_block

# fill in water
execute as @e[tag=new_prison_block.water,tag=prison_block.iron_bars] at @s run fill ~ ~ ~ ~ ~ ~ iron_bars[waterlogged=true] replace minecraft:water
execute as @e[tag=new_prison_block.water,tag=prison_block.chiseled_tuff] at @s run fill ~ ~ ~ ~ ~ ~ chiseled_tuff replace minecraft:water
execute as @e[tag=new_prison_block.water,tag=prison_block.polished_tuff_slab.bottom] at @s run fill ~ ~ ~ ~ ~ ~ polished_tuff_slab[waterlogged=true,type=bottom] replace minecraft:water
execute as @e[tag=new_prison_block.water,tag=prison_block.tuff_brick_slab.bottom] at @s run fill ~ ~ ~ ~ ~ ~ tuff_brick_slab[waterlogged=true,type=bottom] replace minecraft:water
execute as @e[tag=new_prison_block.water,tag=prison_block.tuff_brick_stairs.north] at @s run fill ~ ~ ~ ~ ~ ~ tuff_brick_stairs[waterlogged=true,facing=north] replace minecraft:water
execute as @e[tag=new_prison_block.water,tag=prison_block.tuff_brick_stairs.south] at @s run fill ~ ~ ~ ~ ~ ~ tuff_brick_stairs[waterlogged=true,facing=south] replace minecraft:water
execute as @e[tag=new_prison_block.water,tag=prison_block.tuff_brick_stairs.east] at @s run fill ~ ~ ~ ~ ~ ~ tuff_brick_stairs[waterlogged=true,facing=east] replace minecraft:water
execute as @e[tag=new_prison_block.water,tag=prison_block.tuff_brick_stairs.west] at @s run fill ~ ~ ~ ~ ~ ~ tuff_brick_stairs[waterlogged=true,facing=west] replace minecraft:water
tag @e[tag=new_prison_block.water] remove new_prison_block.water
