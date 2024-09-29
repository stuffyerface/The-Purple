


































#EAST
#4 | [1f,-0.1f,0f,0.1f,-0f,1f,0f,2f,0f,0f,1f,0f,0f,0f,0f,1f]  | {translation:[0.1f,2f,0f],left_rotation:[0f,0f,0.394f,0.919f],scale:[0.951f,1.051f,1f],right_rotation:[0f,0f,0.371f,-0.929f]}
#3 | [1f,-0.1f,0f,0.2f,-0f,1f,0f,1f,0f,0f,1f,0f,0f,0f,0f,1f]  | {translation:[0.2f,1f,0f],left_rotation:[0f,0f,0.394f,0.919f],scale:[0.951f,1.051f,1f],right_rotation:[0f,0f,0.371f,-0.929f]}
#2 | [1f,-0.1f,0f,0.3f,-0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f]  | {translation:[0.3f,0f,0f],left_rotation:[0f,0f,0.394f,0.919f],scale:[0.951f,1.051f,1f],right_rotation:[0f,0f,0.371f,-0.929f]}
#1 | [1f,-0.1f,0f,0.4f,-0f,1f,0f,-1f,0f,0f,1f,0f,0f,0f,0f,1f] | {translation:[0.4f,-1f,0f],left_rotation:[0f,0f,0.394f,0.919f],scale:[0.951f,1.051f,1f],right_rotation:[0f,0f,0.371f,-0.929f]}
#WEST
#4 | [1f,0.1f,0f,-0.1f,-0f,1f,0f,2f,0f,0f,1f,0f,0f,0f,0f,1f]  | {translation:[-0.1f,2f,0f],left_rotation:[0f,0f,0.371f,0.929f],scale:[1.051f,0.951f,1f],right_rotation:[0f,0f,-0.394f,0.919f]}
#3 | [1f,0.1f,0f,-0.2f,-0f,1f,0f,1f,0f,0f,1f,0f,0f,0f,0f,1f]  | {translation:[-0.2f,1f,0f],left_rotation:[0f,0f,0.371f,0.929f],scale:[1.051f,0.951f,1f],right_rotation:[0f,0f,-0.394f,0.919f]}
#2 | [1f,0.1f,0f,-0.3f,-0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f]  | {translation:[-0.3f,0f,0f],left_rotation:[0f,0f,0.371f,0.929f],scale:[1.051f,0.951f,1f],right_rotation:[0f,0f,-0.394f,0.919f]}
#1 | [1f,0.1f,0f,-0.4f,-0f,1f,0f,-1f,0f,0f,1f,0f,0f,0f,0f,1f] | {translation:[-0.4f,-1f,0f],left_rotation:[0f,0f,0.371f,0.929f],scale:[1.051f,0.951f,1f],right_rotation:[0f,0f,-0.394f,0.919f]}





#scoreboard objectives add corruption dummy
#team add player_1 "P1"

#execute if score @a[distance=..10] corruption matches 00..10 run team modify player_1 prefix [{"text":""},{"text":"🖤","color":"#ffffff","obfuscated":false},{"text":" | ","color":"gray"}]
#execute if score @a[distance=..10] corruption matches 11..20 run team modify player_1 prefix [{"text":""},{"text":"🖤","color":"#ffe8f3","obfuscated":false},{"text":" | ","color":"gray"}]
#execute if score @a[distance=..10] corruption matches 21..30 run team modify player_1 prefix [{"text":""},{"text":"💔","color":"#ffd1ea","obfuscated":false},{"text":" | ","color":"gray"}]
#execute if score @a[distance=..10] corruption matches 31..40 run team modify player_1 prefix [{"text":""},{"text":"💔","color":"#ffbce4","obfuscated":false},{"text":" | ","color":"gray"}]
#execute if score @a[distance=..10] corruption matches 41..50 run team modify player_1 prefix [{"text":""},{"text":"🧡","color":"#ffa4e1","obfuscated":false},{"text":" | ","color":"gray"}]
#execute if score @a[distance=..10] corruption matches 51..60 run team modify player_1 prefix [{"text":""},{"text":"🧡","color":"#ff89e3","obfuscated":false},{"text":" | ","color":"gray"}]
#execute if score @a[distance=..10] corruption matches 61..70 run team modify player_1 prefix [{"text":""},{"text":"💛","color":"#ff6fe7","obfuscated":false},{"text":" | ","color":"gray"}]
#execute if score @a[distance=..10] corruption matches 71..80 run team modify player_1 prefix [{"text":""},{"text":"💛","color":"#fb54ed","obfuscated":false},{"text":" | ","color":"gray"}]
#execute if score @a[distance=..10] corruption matches 81..90 run team modify player_1 prefix [{"text":""},{"text":"🤍","color":"#ed36f5","obfuscated":true},{"text":" | ","color":"gray"}]
#execute if score @a[distance=..10] corruption matches 91..100 run team modify player_1 prefix [{"text":""},{"text":"🤍","color":"#db00ff","obfuscated":true},{"text":" | ","color":"gray"}]



# 
# 
# - team color gradient depending on how corrupted you are
# - glowing effect based on this
# - 
# 
# 

