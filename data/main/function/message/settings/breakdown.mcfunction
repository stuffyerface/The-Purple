tellraw @s [{"text":"                                   ","color":"dark_gray","strikethrough":true}]
tellraw @s [{"text":"       "},{"text":"Game Settings","color":"dark_purple","bold":true}]
tellraw @s ""

# map name
execute if score .map settings matches 1 run tellraw @s [{"text":""},{"text":"• ","color":"dark_gray"},{"text":"Selected Map: ","color":"gray"},{"text":"Map Name 1","color":"light_purple"}]
execute if score .map settings matches 2 run tellraw @s [{"text":""},{"text":"• ","color":"dark_gray"},{"text":"Selected Map: ","color":"gray"},{"text":"Map Name 2","color":"white"}]
execute if score .map settings matches 3 run tellraw @s [{"text":""},{"text":"• ","color":"dark_gray"},{"text":"Selected Map: ","color":"gray"},{"text":"Map Name 3","color":"dark_green"}]

# round length
execute if score .round_length_minutes settings matches 0 run tellraw @s [{"text":""},{"text":"• ","color":"dark_gray"},{"text":"Round Length: ","color":"gray"},{"score":{"objective":"settings","name":".round_length_seconds"},"color":"yellow"},{"text":" seconds","color":"yellow"}]
execute if score .round_length_minutes settings matches 1 if score .round_length_seconds settings matches 0 run tellraw @s [{"text":""},{"text":"• ","color":"dark_gray"},{"text":"Round Length: ","color":"gray"},{"score":{"objective":"settings","name":".round_length_minutes"},"color":"yellow"},{"text":" minute","color":"yellow"}]
execute if score .round_length_minutes settings matches 2.. if score .round_length_seconds settings matches 0 run tellraw @s [{"text":""},{"text":"• ","color":"dark_gray"},{"text":"Round Length: ","color":"gray"},{"score":{"objective":"settings","name":".round_length_minutes"},"color":"yellow"},{"text":" minutes","color":"yellow"}]
execute if score .round_length_minutes settings matches 1 if score .round_length_seconds settings matches 1.. run tellraw @s [{"text":""},{"text":"• ","color":"dark_gray"},{"text":"Round Length: ","color":"gray"},{"score":{"objective":"settings","name":".round_length_minutes"},"color":"yellow"},{"text":" minute ","color":"yellow"},{"score":{"objective":"settings","name":".round_length_seconds"},"color":"yellow"},{"text":" seconds","color":"yellow"}]
execute if score .round_length_minutes settings matches 2.. if score .round_length_seconds settings matches 1.. run tellraw @s [{"text":""},{"text":"• ","color":"dark_gray"},{"text":"Round Length: ","color":"gray"},{"score":{"objective":"settings","name":".round_length_minutes"},"color":"yellow"},{"text":" minutes ","color":"yellow"},{"score":{"objective":"settings","name":".round_length_seconds"},"color":"yellow"},{"text":" seconds","color":"yellow"}]

# round timer
execute if score .round_timer settings matches 1.. run tellraw @s [{"text":""},{"text":"• ","color":"dark_gray"},{"text":"Round Timer: ","color":"gray"},{"text":"Shown","color":"green"}]
execute if score .round_timer settings matches ..0 run tellraw @s [{"text":""},{"text":"• ","color":"dark_gray"},{"text":"Round Timer: ","color":"gray"},{"text":"Hidden","color":"red"}]

# starting immunity
execute if score .starting_immunity settings matches 1.. run tellraw @s [{"text":""},{"text":"• ","color":"dark_gray"},{"text":"Starting Immunity: ","color":"gray"},{"score":{"objective":"settings","name":".starting_immunity"},"color":"yellow"},{"text":"s","color":"yellow"}]
execute if score .starting_immunity settings matches ..0 run tellraw @s [{"text":""},{"text":"• ","color":"dark_gray"},{"text":"Starting Immunity: ","color":"gray"},{"text":"Off","color":"red"}]

# allow tagbacks
execute if score .tagback settings matches -1 run tellraw @s [{"text":""},{"text":"• ","color":"dark_gray"},{"text":"Allow Tagbacks: ","color":"gray"},{"text":"Always","color":"green"}]
execute if score .tagback settings matches 1.. run tellraw @s [{"text":""},{"text":"• ","color":"dark_gray"},{"text":"Allow Tagbacks: ","color":"gray"},{"score":{"objective":"settings","name":".tagback"},"color":"yellow"},{"text":"s","color":"yellow"}]
execute if score .tagback settings matches 0 run tellraw @s [{"text":""},{"text":"• ","color":"dark_gray"},{"text":"Allow Tagbacks: ","color":"gray"},{"text":"Never","color":"red"}]

# increase timer
execute if score .increase_timer settings matches 1.. run tellraw @s [{"text":""},{"text":"• ","color":"dark_gray"},{"text":"Tags Raise Timer: ","color":"gray"},{"score":{"objective":"settings","name":".increase_timer"},"color":"yellow"},{"text":"s","color":"yellow"}]
execute if score .increase_timer settings matches ..0 run tellraw @s [{"text":""},{"text":"• ","color":"dark_gray"},{"text":"Tags Raise Timer: ","color":"gray"},{"text":"Off","color":"red"}]

tellraw @s ""
tellraw @s [{"text":"                                   ","color":"dark_gray","strikethrough":true}]
