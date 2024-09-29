# Hit @p 1 more time to tag them!
execute if score @s double_tap matches 1 run tellraw @s [{"text":"","color":"dark_green"},{"text":"Hit "},{"selector":"@n[type=#main:player,dx=0]"},{"text":" "},{"score":{"objective":"double_tap","name":"@s"},"color":"green"},{"text":" more time to tag them!"}]

# Hit @p 2 more times to tag them!
execute if score @s double_tap matches 2.. run tellraw @s [{"text":"","color":"dark_green"},{"text":"Hit "},{"selector":"@n[type=#main:player,dx=0]"},{"text":" "},{"score":{"objective":"double_tap","name":"@s"},"color":"green"},{"text":" more times to tag them!"}]
