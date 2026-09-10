# set team color
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"WHITE"}] run scoreboard players set @s color 0
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"ORANGE"}] run scoreboard players set @s color 1
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"MAGENTA"}] run scoreboard players set @s color 2
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"LIGHT_BLUE"}] run scoreboard players set @s color 3
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"YELLOW"}] run scoreboard players set @s color 4
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"LIME"}] run scoreboard players set @s color 5
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"PINK"}] run scoreboard players set @s color 6
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"GRAY"}] run scoreboard players set @s color 7
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"LIGHT_GRAY"}] run scoreboard players set @s color 8
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"CYAN"}] run scoreboard players set @s color 9
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"PURPLE"}] run scoreboard players set @s color 10
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"BLUE"}] run scoreboard players set @s color 11
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"BROWN"}] run scoreboard players set @s color 12
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"GREEN"}] run scoreboard players set @s color 13
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"RED"}] run scoreboard players set @s color 14
execute if items entity @s player.cursor *[minecraft:custom_data~{selection:"BLACK"}] run scoreboard players set @s color 15

function main:id/team/set_color
title @s actionbar {"selector":"@s"}
scoreboard players set @s actionbar 40
advancement grant @s only main:advancement/1_gameplay/choices_choices color

# reset menu
function main:module/inventory/menu_preview/cosmetic_color
