tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" swapped to Cosmetic Page 3."}]
kill @e[tag=settings,tag=!setting.board,tag=!setting.title,distance=..5]

# set title
execute as @n[type=text_display,tag=setting.title] run data merge entity @s {text:[{"text":"\n","bold":true},{"translate":"setting.purple.title.death_effect","fallback":"Choose Your Death Effect","color":"dark_purple"},{"strikethrough":true,"bold":false,"text":"\n                                     ","color":"gray"}]}

# elements
execute positioned ~0.2 ~3.1 ~ run function main:lobby/settings/board/element/rectangle_left {setting:'setting.death_effect.explode',translate:"setting.purple.button.death_effect.explode.name",fallback:"Explosion",texture:'"minecraft:tnt"',background:'"minecraft:gray_concrete"'}
execute positioned ~0.2 ~2.1 ~ run function main:lobby/settings/board/element/rectangle_left {setting:'setting.death_effect.shrink',translate:"setting.purple.button.death_effect.shrink.name",fallback:"Shrink",texture:'"minecraft:player_head",components:{"minecraft:profile": {properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY5NmI4ZDAxZjU4MzVlZDM4YWZkNDUzMDIyOGQwYjVhYmI3ZDQ1YTM1NTUxOWVhNjgwYzQwZmZjYTMyZWRmMiJ9fX0="}]}}',background:'"minecraft:gray_concrete"'}
execute positioned ~0.2 ~1.1 ~ run function main:lobby/settings/board/element/rectangle_left {setting:'setting.death_effect.grave',translate:"setting.purple.button.death_effect.grave.name",fallback:"Gravestone",texture:'"minecraft:skeleton_skull"',background:'"minecraft:gray_concrete"'}
# usually -1.85

#execute positioned ~2.15 ~3.1 ~ run function main:lobby/settings/board/element/rectangle_right {setting:'',translate:"",fallback:"",texture:'',background:'"minecraft:gray_concrete"'}
#execute positioned ~2.15 ~2.1 ~ run function main:lobby/settings/board/element/rectangle_right {setting:'',translate:"",fallback:"",texture:'',background:'"minecraft:gray_concrete"'}
#execute positioned ~2.15 ~1.1 ~ run function main:lobby/settings/board/element/rectangle_right {setting:'',translate:"",fallback:"",texture:'',background:'"minecraft:gray_concrete"'}

execute positioned ~0.575 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.cosmetic.page_2',texture:'"minecraft:firework_rocket"',background:'"minecraft:air"'}
execute positioned ~1.500 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.cosmetic.page_1',texture:'"minecraft:purple_dye"',background:'"minecraft:air"'}
execute positioned ~2.425 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.close',texture:'"minecraft:barrier"',background:'"minecraft:air"'}
execute positioned ~3.35 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.change_settings',texture:'"minecraft:command_block"',background:'"minecraft:air"'}
