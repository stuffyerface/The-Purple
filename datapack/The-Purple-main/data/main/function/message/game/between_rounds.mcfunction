scoreboard players set @a[tag=alive] actionbar 20

execute if score .countdown data matches 1.. run title @a[tag=alive] actionbar [{"color":"green","translate":"message.purple.game.between_rounds","fallback":"%1$s will be released in %2$s...","with":[[{"color":"#AA00AA","text":"T"},{"color":"#B317AE","text":"h"},{"color":"#BD2DB2","text":"e "},{"color":"#C644B5","text":"P"},{"color":"#D05BB9","text":"u"},{"color":"#D971BD","text":"r"},{"color":"#E388C1","text":"p"},{"color":"#EC9FC4","text":"l"},{"color":"#FFCCCC","text":"e"}],{"score":{"name":".countdown","objective":"data"},"color":"yellow"}]}]
execute if score .countdown data matches ..0 run title @a[tag=alive] actionbar ""

execute as @a[tag=alive] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
