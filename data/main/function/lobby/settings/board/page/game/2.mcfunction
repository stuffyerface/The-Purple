tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" swapped to Game Page 2."}]
kill @e[tag=settings,tag=!setting.board,tag=!setting.title]

# set title
execute as @e[type=text_display,tag=setting.title] run data merge entity @s {text:'[{"text":"\\n"},{"bold":true,"text":"Game Settings","color":"dark_purple"},{"text":"\\n"},{"strikethrough":true,"text":"                      ","color":"gray"}]'}

# elements
execute positioned ~-1.2 ~3 ~ run function main:lobby/settings/game/tagback/element
execute positioned ~-1.2 ~2 ~ run function main:lobby/settings/game/double_tap/element
execute positioned ~-1.2 ~1 ~ run function main:lobby/settings/game/increase_timer/element

execute positioned ~2.5 ~0.45 ~ run function main:lobby/settings/board/element/close
execute positioned ~3.5 ~0.45 ~ run function main:lobby/settings/board/element/change_settings

execute positioned ~-1.53 ~0.33 ~ run function main:lobby/settings/board/element/arrow_left {"page":"game","number":"1"}
