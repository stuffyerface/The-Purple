advancement revoke @s only main:triggers/lobby/artifact_display

# find correct artifact display
tag @s add interact_with_display
execute as @e[type=interaction,tag=lobby.artifact_display] at @s on attacker if entity @s[tag=interact_with_display] run tag @n[type=interaction,tag=lobby.artifact_display] add modify_this_entity
execute as @e[type=interaction,tag=lobby.artifact_display] at @s on target if entity @s[tag=interact_with_display] run tag @n[type=interaction,tag=lobby.artifact_display] add modify_this_entity
tag @s remove interact_with_display

# debug stick
execute if entity @s[nbt={SelectedItem:{id:"minecraft:debug_stick"}}] run scoreboard players remove .total_artifacts data 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:debug_stick"}}] as @n[tag=modify_this_entity,tag=full] if entity @s[tag=artifact.frying_pan] run scoreboard players reset artifact.frying_pan data
execute if entity @s[nbt={SelectedItem:{id:"minecraft:debug_stick"}}] as @n[tag=modify_this_entity,tag=full] if entity @s[tag=artifact.microscope] run scoreboard players reset artifact.microscope data
execute if entity @s[nbt={SelectedItem:{id:"minecraft:debug_stick"}}] as @n[tag=modify_this_entity,tag=full] if entity @s[tag=artifact.ugly_fish] run scoreboard players reset artifact.ugly_fish data
execute if entity @s[nbt={SelectedItem:{id:"minecraft:debug_stick"}}] as @n[tag=modify_this_entity,tag=full] if entity @s[tag=artifact.potted_plant] run scoreboard players reset artifact.potted_plant data
execute if entity @s[nbt={SelectedItem:{id:"minecraft:debug_stick"}}] as @n[tag=modify_this_entity,tag=full] if entity @s[tag=artifact.rope] run scoreboard players reset artifact.rope data
execute if entity @s[nbt={SelectedItem:{id:"minecraft:debug_stick"}}] as @n[tag=modify_this_entity,tag=full] if entity @s[tag=artifact.drill] run scoreboard players reset artifact.drill data
execute if entity @s[nbt={SelectedItem:{id:"minecraft:debug_stick"}}] as @n[tag=modify_this_entity,tag=full] if entity @s[tag=artifact.meteorite] run scoreboard players reset artifact.meteorite data
execute if entity @s[nbt={SelectedItem:{id:"minecraft:debug_stick"}}] as @n[tag=modify_this_entity,tag=full] if entity @s[tag=artifact.gears] run scoreboard players reset artifact.gears data
execute if entity @s[nbt={SelectedItem:{id:"minecraft:debug_stick"}}] as @n[tag=modify_this_entity,tag=full] if entity @s[tag=artifact.lantern] run scoreboard players reset artifact.lantern data
execute if entity @s[nbt={SelectedItem:{id:"minecraft:debug_stick"}}] as @n[tag=modify_this_entity,tag=full] if entity @s[tag=artifact.test] run scoreboard players reset artifact.test data
execute if entity @s[nbt={SelectedItem:{id:"minecraft:debug_stick"}}] at @n[tag=modify_this_entity,tag=full] positioned ~ ~1 ~ run kill @e[distance=..1,tag=furniture.artifact]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:debug_stick"}}] at @n[tag=modify_this_entity,tag=full] as @e[limit=2,sort=nearest,tag=lobby.artifact_display,tag=full] run data merge entity @s {Tags:["modify_this_entity","lobby.artifact_display","empty"],view_range:1f}


# place artifacts
execute if entity @s[tag=artifact.frying_pan] as @n[tag=modify_this_entity,tag=empty] at @s positioned ~ ~1 ~ run function main:lobby/furniture/artifact_display/lobby_frying_pan
execute if entity @s[tag=artifact.microscope] as @n[tag=modify_this_entity,tag=empty] at @s positioned ~ ~1 ~ run function main:lobby/furniture/artifact_display/lobby_microscope
execute if entity @s[tag=artifact.ugly_fish] as @n[tag=modify_this_entity,tag=empty] at @s positioned ~ ~1 ~ run function main:lobby/furniture/artifact_display/lobby_ugly_fish
execute if entity @s[tag=artifact.potted_plant] as @n[tag=modify_this_entity,tag=empty] at @s positioned ~ ~1 ~ run function main:lobby/furniture/artifact_display/map_potted_plant
execute if entity @s[tag=artifact.rope] as @n[tag=modify_this_entity,tag=empty] at @s positioned ~ ~1 ~ run function main:lobby/furniture/artifact_display/map_rope
execute if entity @s[tag=artifact.drill] as @n[tag=modify_this_entity,tag=empty] at @s positioned ~ ~1 ~ run function main:lobby/furniture/artifact_display/map_drill
execute if entity @s[tag=artifact.meteorite] as @n[tag=modify_this_entity,tag=empty] at @s positioned ~ ~1 ~ run function main:lobby/furniture/artifact_display/map_meteorite
execute if entity @s[tag=artifact.gears] as @n[tag=modify_this_entity,tag=empty] at @s positioned ~ ~1 ~ run function main:lobby/furniture/artifact_display/map_gears
execute if entity @s[tag=artifact.lantern] as @n[tag=modify_this_entity,tag=empty] at @s positioned ~ ~1 ~ run function main:lobby/furniture/artifact_display/map_lantern
execute if entity @s[tag=artifact.test] as @n[tag=modify_this_entity,tag=empty] at @s positioned ~ ~1 ~ run function main:lobby/furniture/artifact_display/test


# messages
execute if entity @n[tag=modify_this_entity,tag=empty] run title @s subtitle ""
execute if entity @n[tag=modify_this_entity,tag=empty] run title @s actionbar {"color":"#76776F","translate":"message.purple.lobby.artifact_display.empty","fallback":"An empty pedestal, maybe something unique could go here?"}
execute if entity @n[tag=modify_this_entity,tag=full] run title @s times 0 40 10
execute if entity @n[tag=modify_this_entity,tag=full] run title @s title ""

execute if entity @n[tag=modify_this_entity,tag=artifact.frying_pan] run title @s subtitle {"color":"gray","translate":"item.purple.artifact.frying_pan.name","fallback":"Frying Pan"}
execute if entity @n[tag=modify_this_entity,tag=artifact.frying_pan] run title @s actionbar {"color":"white","translate":"item.purple.artifact.frying_pan.desc","fallback":"Perfect for cooking up mysterious scrambled eggs!"}
execute if entity @n[tag=modify_this_entity,tag=artifact.microscope] run title @s subtitle {"color":"gray","translate":"item.purple.artifact.microscope.name","fallback":"Microscope"}
execute if entity @n[tag=modify_this_entity,tag=artifact.microscope] run title @s actionbar {"color":"white","translate":"item.purple.artifact.microscope.desc","fallback":"An essential tool for any scientist."}
execute if entity @n[tag=modify_this_entity,tag=artifact.ugly_fish] run title @s subtitle {"color":"gray","translate":"item.purple.artifact.ugly_fish.name","fallback":"Ugly Fish"}
execute if entity @n[tag=modify_this_entity,tag=artifact.ugly_fish] run title @s actionbar {"color":"white","translate":"item.purple.artifact.ugly_fish.desc","fallback":"A.. fascinating, species of alien fish."}
execute if entity @n[tag=modify_this_entity,tag=artifact.potted_plant] run title @s subtitle {"color":"gray","translate":"item.purple.artifact.potted_plant.name","fallback":"Potted Specimen"}
execute if entity @n[tag=modify_this_entity,tag=artifact.potted_plant] run title @s actionbar {"color":"white","translate":"item.purple.artifact.potted_plant.desc","fallback":"Definitely not some scientist's personal alien bonsai tree."}
execute if entity @n[tag=modify_this_entity,tag=artifact.rope] run title @s subtitle {"color":"gray","translate":"item.purple.artifact.rope.name","fallback":"Spare Rope"}
execute if entity @n[tag=modify_this_entity,tag=artifact.rope] run title @s actionbar {"color":"white","translate":"item.purple.artifact.rope.desc","fallback":"Rope leftover from a failed quicksand escape."}
execute if entity @n[tag=modify_this_entity,tag=artifact.drill] run title @s subtitle {"color":"gray","translate":"item.purple.artifact.drill.name","fallback":"Jackhammer"}
execute if entity @n[tag=modify_this_entity,tag=artifact.drill] run title @s actionbar {"color":"white","translate":"item.purple.artifact.drill.desc","fallback":"Not the most precise of scientific tools, but it does its job."}
execute if entity @n[tag=modify_this_entity,tag=artifact.meteorite] run title @s subtitle {"color":"gray","translate":"item.purple.artifact.meteorite.name","fallback":"Meteorite Chunk"}
execute if entity @n[tag=modify_this_entity,tag=artifact.meteorite] run title @s actionbar {"color":"white","translate":"item.purple.artifact.meteorite.desc","fallback":"The only meteorite sample we have, an extremely rare case."}
execute if entity @n[tag=modify_this_entity,tag=artifact.gears] run title @s subtitle {"color":"gray","translate":"item.purple.artifact.gears.name","fallback":"Lost Gears"}
execute if entity @n[tag=modify_this_entity,tag=artifact.gears] run title @s actionbar {"color":"white","translate":"item.purple.artifact.gears.desc","fallback":"How did this get here? Is the crane still safe to use?"}
execute if entity @n[tag=modify_this_entity,tag=artifact.lantern] run title @s subtitle {"color":"gray","translate":"item.purple.artifact.lantern.name","fallback":"Lantern"}
execute if entity @n[tag=modify_this_entity,tag=artifact.lantern] run title @s actionbar {"color":"white","translate":"item.purple.artifact.lantern.desc","fallback":"Sometimes modern problems require ancient solutions."}
execute if entity @n[tag=modify_this_entity,tag=artifact.test] run title @s subtitle {"color":"gray","translate":"item.purple.artifact.test.name","fallback":"Armor Stand"}
execute if entity @n[tag=modify_this_entity,tag=artifact.test] run title @s actionbar {"color":"white","translate":"item.purple.artifact.test.desc","fallback":"Just a normal armor stand for testing purposes."}

scoreboard players set @s actionbar 50
playsound minecraft:block.tuff_bricks.break block @s ~ ~ ~ 1 1

# clean up
data remove entity @n[type=interaction,tag=modify_this_entity] attack
data remove entity @n[type=interaction,tag=modify_this_entity] interaction
tag @e[tag=modify_this_entity] remove modify_this_entity
