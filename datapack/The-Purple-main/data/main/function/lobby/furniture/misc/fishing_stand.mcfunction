advancement revoke @s only main:triggers/lobby/fishing_stand
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{id:FISHING_ROD}}}]}] run playsound minecraft:block.barrel.close block @s ~ ~ ~ 1 2
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{id:FISHING_ROD}}}]}] run scoreboard players set @s actionbar 30
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{id:FISHING_ROD}}}]}] run return run title @s actionbar {"translate":"message.purple.lobby.fishing_stand","fallback":"You already have a Fishing Rod!","color":"red"}
execute if entity @e[type=item,nbt={Item:{id:"minecraft:fishing_rod"}},distance=..3] run return 0

loot give @s loot main:item/fishing_rod
playsound minecraft:entity.fishing_bobber.retrieve block @s ~ ~ ~ 1 0.4
