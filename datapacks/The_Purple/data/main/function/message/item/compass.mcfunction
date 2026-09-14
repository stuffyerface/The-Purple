scoreboard players set @s actionbar 30
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:damage":4}}}] run playsound minecraft:entity.item.break player @s ~ ~ ~ 1 1.2
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:damage":4}}}] run return run title @s actionbar [{"translate":"message.purple.item.compass.broken","fallback":"You can't track anyone with a broken compass!","color":"red"}]
execute if entity @p[tag=item.compass_tracked] run title @s actionbar [{"color":"green","translate":"message.purple.item.compass","fallback":"Now tracking %s!","with":[{"selector":"@p[tag=item.compass_tracked]"}]}]
execute unless entity @p[tag=item.compass_tracked] run title @s actionbar [{"translate":"message.purple.item.compass.none","fallback":"Couldn't find anyone to track!","color":"red"}]

execute as @p[tag=item.compass_tracked] run title @s actionbar [{"color":"red","translate":"message.purple.item.compass.tracked","fallback":"You're being tracked by %s!","with":[{"selector":"@p[tag=item.compass_tracker]"}]}]
execute as @p[tag=item.compass_tracked] run scoreboard players set @s actionbar 30
