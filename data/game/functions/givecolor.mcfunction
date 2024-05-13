execute as @s unless score @s teamColor matches 1.. run scoreboard players set @s teamColor 0
execute if score @s teamColor matches ..1 run function game:giveblocks {"color": "white"}
execute if score @s teamColor matches 1 run function game:giveblocks {"color": "light_gray"}
execute if score @s teamColor matches 2 run function game:giveblocks {"color": "gray"}
execute if score @s teamColor matches 3 run function game:giveblocks {"color": "black"}
execute if score @s teamColor matches 4 run function game:giveblocks {"color": "brown"}
execute if score @s teamColor matches 5 run function game:giveblocks {"color": "red"}
execute if score @s teamColor matches 6 run function game:giveblocks {"color": "orange"}
execute if score @s teamColor matches 7 run function game:giveblocks {"color": "yellow"}
execute if score @s teamColor matches 8 run function game:giveblocks {"color": "lime"}
execute if score @s teamColor matches 9 run function game:giveblocks {"color": "green"}
execute if score @s teamColor matches 10 run function game:giveblocks {"color": "cyan"}
execute if score @s teamColor matches 11 run function game:giveblocks {"color": "light_blue"}
execute if score @s teamColor matches 12 run function game:giveblocks {"color": "blue"}
execute if score @s teamColor matches 13 run function game:giveblocks {"color": "purple"}
execute if score @s teamColor matches 14 run function game:giveblocks {"color": "magenta"}
execute if score @s teamColor matches 15 run function game:giveblocks {"color": "pink"}