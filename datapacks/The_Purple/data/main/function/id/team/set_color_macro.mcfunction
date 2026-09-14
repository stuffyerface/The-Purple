$execute if entity @s[tag=!corrupted] run team modify P$(id) collisionRule always
$execute if entity @s[tag=!corrupted] run team modify P$(id) nametagVisibility always

$execute if entity @s[tag=!player,tag=!ready] run team modify P$(id) prefix [{"text":"⭐ ","color":"#$(color)"}]
$execute if entity @s[tag=!player,tag=!ready] run return run team modify P$(id) color gray

$execute if entity @s[tag=ready] run team modify P$(id) prefix [{"text":"⭐ ","color":"#$(color)"}]
$execute if entity @s[tag=ready] run return run team modify P$(id) color green

$execute if entity @s[tag=player,tag=!source,tag=!corrupted,tag=!draconic_stage_3] run team modify P$(id) prefix [{"text":"⭐ ","color":"#$(color)"}]
$execute if entity @s[tag=player,tag=!source,tag=!corrupted,tag=!draconic_stage_3] run return run team modify P$(id) color green

$execute if entity @s[tag=source,tag=!draconic_stage_3] run team modify P$(id) prefix [{"text":"👾 ","color":"#$(color)"}]
$execute if entity @s[tag=source,tag=!draconic_stage_3] run return run team modify P$(id) color dark_purple

$execute if entity @s[tag=draconic_stage_3] run team modify P$(id) prefix [{"text":"🐉 ","color":"#$(color)"}]
$execute if entity @s[tag=draconic_stage_3] run return run team modify P$(id) color dark_red

$execute if entity @s[tag=corrupted] run team modify P$(id) collisionRule never
$execute if entity @s[tag=corrupted] run team modify P$(id) nametagVisibility never
$execute if entity @s[tag=corrupted] run team modify P$(id) prefix [{"text":"☠ ","color":"#$(color)"}]
$execute if entity @s[tag=corrupted] run return run team modify P$(id) color dark_gray


# in lobby = gray
# in lobby and ready = green
# in game and alive = green
# in game and infected = dark purple
# in game and corrupted (dead) = dark gray
# in game and draconic stage 3 = dark red

# corrupted = no collision and no nametag
# not corrupted = yes collision and yes nametag
