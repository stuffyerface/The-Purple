$team add P$(id) "Player #$(id)"
$team modify P$(id) prefix [{"text":"⭐ ","color":"#$(color)"}]
$team modify P$(id) color green
$team join P$(id) @s
