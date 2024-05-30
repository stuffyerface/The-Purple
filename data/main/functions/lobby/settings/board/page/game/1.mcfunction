# cleanup
tellraw @a[tag=debug] [{"text":"[Console] "},{"text":"Game Page 1."}]
kill @e[tag=settings,tag=!setting.board,tag=!setting.title]

# set title
execute as @e[type=text_display,tag=setting.title] run data merge entity @s {text:'[{"text":"\\n"},{"bold":true,"text":"Game Settings","color":"dark_purple"},{"text":"\\n"},{"strikethrough":true,"text":"                      ","color":"gray"}]'}

# elements
execute positioned ~-1.2 ~3 ~ run function main:lobby/settings/board/element/setting/round_length
execute positioned ~-1.2 ~2 ~ run function main:lobby/settings/board/element/setting/round_timer
execute positioned ~-1.2 ~1 ~ run function main:lobby/settings/board/element/setting/starting_immunity

execute positioned ~2.5 ~0.45 ~ run function main:lobby/settings/board/element/close
execute positioned ~3.5 ~0.45 ~ run function main:lobby/settings/board/element/change_settings

execute positioned ~-1.53 ~0.33 ~ run function main:lobby/settings/board/element/arrow_right
tag @e[tag=setup_arrow] add setting.game.page_2
tag @e[tag=setup_arrow] remove setup_arrow
