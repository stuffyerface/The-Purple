tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" swapped to Cosmetic Page 2."}]
kill @e[tag=settings,tag=!setting.board,tag=!setting.title,distance=..5]

# set title
execute as @n[type=text_display,tag=setting.title] run data merge entity @s {text:'[{"text":"\\n","bold":true},{"translate":"setting.purple.title.victory_dance","fallback":"Choose Your Victory Dance","color":"dark_purple"},{"strikethrough":true,"bold":false,"text":"\\n                                     ","color":"gray"}]'}

# elements
execute positioned ~ ~3.1 ~ run function main:lobby/settings/board/element/rectangle_left {setting:'setting.victory_dance.fireworks',translate:"setting.purple.button.victory_dance.fireworks.name",fallback:"Fireworks",texture:'"minecraft:firework_rocket"',background:'"minecraft:gray_concrete"'}
execute positioned ~ ~2.1 ~ run function main:lobby/settings/board/element/rectangle_left {setting:'setting.victory_dance.rainbow_sheep',translate:"setting.purple.button.victory_dance.rainbow_sheep.name",fallback:"Rainbow Sheep",texture:'"minecraft:player_head", components: {"minecraft:profile": {properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTA2OGQzMzJhYWJlOWI4Nzc0MGIzZmFkZjU1NzI0NTJiZWY2NzlmN2FhNTdlOGVjMWUwMTc2Nzg5NzFhZTgwNyJ9fX0="}]}}',background:'"minecraft:gray_concrete"'}
execute positioned ~ ~1.1 ~ run function main:lobby/settings/board/element/rectangle_left {setting:'setting.victory_dance.horse',translate:"setting.purple.button.victory_dance.horse.name",fallback:"Horserider",texture:'"minecraft:player_head", components: {"minecraft:profile": {properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTMzNWUzMTk2MTcxMzM1M2E3NjQwMWUwMGMzNDU0YjdjYTg4NWI3Nzg0ZDUyODhkMzIyNzIyMmQ5YjQ4ZDM5MyJ9fX0="}]}}',background:'"minecraft:gray_concrete"'}
# usually -1.85

#execute positioned ~2.15 ~3.1 ~ run function main:lobby/settings/board/element/rectangle_right {setting:'',translate:"",fallback:"",texture:'',background:'"minecraft:gray_concrete"'}
#execute positioned ~2.15 ~2.1 ~ run function main:lobby/settings/board/element/rectangle_right {setting:'',translate:"",fallback:"",texture:'',background:'"minecraft:gray_concrete"'}
#execute positioned ~2.15 ~1.1 ~ run function main:lobby/settings/board/element/rectangle_right {setting:'',translate:"",fallback:"",texture:'',background:'"minecraft:gray_concrete"'}

execute positioned ~0.575 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.cosmetic.page_1',texture:'"minecraft:purple_dye"',background:'"minecraft:air"'}
execute positioned ~1.500 ~0.45 ~ run function main:lobby/settings/board/element/square_skull {setting:'setting.cosmetic.page_3',texture:'"minecraft:skeleton_skull"',background:'"minecraft:air"'}
execute positioned ~2.425 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.close',texture:'"minecraft:barrier"',background:'"minecraft:air"'}
execute positioned ~3.35 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.change_settings',texture:'"minecraft:command_block"',background:'"minecraft:air"'}
