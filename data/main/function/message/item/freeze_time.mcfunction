scoreboard players set @s actionbar 30
execute if score .game data matches ..0 run return run title @s actionbar [{"translate":"message.purple.item.freeze_time.pregame","fallback":"You can only freeze time during the game!","color":"red"}]
execute if score .game data matches 2.. run return run title @s actionbar [{"translate":"message.purple.item.freeze_time.disabled","fallback":"You cant freeze time right now!","color":"red"}]
execute if score .game data matches 1 run return run title @s actionbar [{"color":"green","translate":"message.purple.item.freeze_time","fallback":"%2$s Time will be frozen for %3$s %s","with":[[{"score":{"objective":"data","name":".freeze_time"},"color":"#DBF1FD"},{"translate":"setting.purple.button.seconds","fallback":"s"}],{"translate":"icon.purple.hourglass","fallback":"⌛","font":"purple:icon","color":"white"},{"translate":"icon.purple.ice","fallback":"🧊","font":"purple:icon","color":"white"}]}]
