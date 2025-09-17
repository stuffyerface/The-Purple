$execute if entity @s[tag=!corrupted] run team modify P$(id) collisionRule always
$execute if entity @s[tag=!corrupted] run team modify P$(id) nametagVisibility always

$execute if entity @s[tag=!player,tag=!ready] run team modify P$(id) prefix [{"text":"⭐ ","color":"#$(color)"}]
$execute if entity @s[tag=!player,tag=!ready] run return run team modify P$(id) color gray

$execute if entity @s[tag=ready] run team modify P$(id) prefix [{"text":"⭐ ","color":"#$(color)"}]
$execute if entity @s[tag=ready] run return run team modify P$(id) color green

$execute if entity @s[tag=player,tag=!source,tag=!corrupted] run team modify P$(id) prefix [{"text":"⭐ ","color":"#$(color)"}]
$execute if entity @s[tag=player,tag=!source,tag=!corrupted] run return run team modify P$(id) color green

$execute if entity @s[tag=source] run team modify P$(id) prefix [{"text":"👾 ","color":"#$(color)"}]
$execute if entity @s[tag=source] run return run team modify P$(id) color dark_purple

$execute if entity @s[tag=corrupted] run team modify P$(id) collisionRule never
$execute if entity @s[tag=corrupted] run team modify P$(id) nametagVisibility never
$execute if entity @s[tag=corrupted] run team modify P$(id) prefix [{"text":"☠ ","color":"#$(color)"}]
$execute if entity @s[tag=corrupted] run return run team modify P$(id) color dark_gray


# in lobby = gray
# in lobby and ready = green
# in game and alive = green
# in game and infected = dark purple
# in game and corrupted (dead) = dark gray

# corrupted = no collision and no nametag
# not corrupted = yes collision and yes nametag
