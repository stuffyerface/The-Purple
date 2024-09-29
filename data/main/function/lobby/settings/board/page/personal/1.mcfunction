tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" swapped to Personal Page 1."}]
kill @e[tag=settings,tag=!setting.board,tag=!setting.title]

# set title
execute as @e[type=text_display,tag=setting.title] run data merge entity @s {text:'[{"text":"\\n"},{"bold":true,"text":"Choose Your Color","color":"dark_purple"},{"text":"\\n"},{"strikethrough":true,"text":"                      ","color":"gray"}]'}

# elements
execute positioned ~-2.25 ~3 ~ run function main:lobby/settings/board/element/color {"color":"red"}
execute positioned ~-2.25 ~2 ~ run function main:lobby/settings/board/element/color {"color":"orange"}
execute positioned ~-2.25 ~1 ~ run function main:lobby/settings/board/element/color {"color":"yellow"}

execute positioned ~-0.75 ~3 ~ run function main:lobby/settings/board/element/color {"color":"lime"}
execute positioned ~-0.75 ~2 ~ run function main:lobby/settings/board/element/color {"color":"green"}
execute positioned ~-0.75 ~1 ~ run function main:lobby/settings/board/element/color {"color":"cyan"}

execute positioned ~0.75 ~3 ~ run function main:lobby/settings/board/element/color {"color":"light_blue"}
execute positioned ~0.75 ~2 ~ run function main:lobby/settings/board/element/color {"color":"blue"}
execute positioned ~0.75 ~1 ~ run function main:lobby/settings/board/element/color {"color":"purple"}

execute positioned ~2.25 ~3 ~ run function main:lobby/settings/board/element/color {"color":"magenta"}
execute positioned ~2.25 ~2 ~ run function main:lobby/settings/board/element/color {"color":"pink"}
execute positioned ~2.25 ~1 ~ run function main:lobby/settings/board/element/color {"color":"brown"}

#execute positioned ~2.5 ~0.45 ~ run function main:lobby/settings/board/element/close
#execute positioned ~3.5 ~0.45 ~ run function main:lobby/settings/board/element/change_settings
