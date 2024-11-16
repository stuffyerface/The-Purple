# Hit @p 1 more time to tag them!
execute if score @s double_tap matches 1 run title @s actionbar [{"color":"red","translate":"message.purple.corrupted.double_tap","fallback":"Hit %1$s %2$s more time to infect them!","with":[{"selector":"@n[type=#main:player,dx=0]"},{"score":{"objective":"double_tap","name":"@s"},"color":"yellow"}]}]

# Hit @p 2 more times to tag them!
execute if score @s double_tap matches 2.. run title @s actionbar [{"color":"red","translate":"message.purple.corrupted.triple_tap","fallback":"Hit %1$s %2$s more times to infect them!","with":[{"selector":"@n[type=#main:player,dx=0]"},{"score":{"objective":"double_tap","name":"@s"},"color":"yellow"}]}]
scoreboard players set @s actionbar 20
