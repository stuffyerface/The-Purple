$team add P$(id) "Player #$(id)"
$team modify P$(id) prefix [{"text":"⭐ ","color":"#AA00AA"}]
$team modify P$(id) color gray
$team modify P$(id) friendlyFire false
$team join P$(id) @s
