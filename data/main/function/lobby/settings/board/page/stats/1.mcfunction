tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"}," swapped to Stats Page 1."]
kill @e[tag=settings,tag=!setting.board,tag=!setting.title,distance=..5]
tag @s add check_my_stats

# set title
execute as @n[type=text_display,tag=setting.title] run data merge entity @n[type=text_display,tag=setting.title] {text:'[{"text":"\\n","bold":true},{"translate":"setting.purple.title.stats","fallback":"%s\'s Statistics","color":"dark_purple","with":[{"selector":"@p[tag=check_my_stats]"}]},{"strikethrough":true,"bold":false,"text":"\\n                                             ","color":"gray"}]'}

# stats
execute positioned ~-2 ~0.75 ~ run function main:lobby/settings/board/element/stats {id1:"stat.total_games",fallback1:"Total Games:",id2:"stat.total_rounds",fallback2:"Total Rounds:",id3:"stat.total_wins",fallback3:"Total Wins:",id4:"stat.infection_received",fallback4:"Received Infection:",id5:"stat.infection_passed",fallback5:"Passed Infection:",id6:"stat.found_items",fallback6:"Items Found:"}
execute positioned ~2 ~0.750 ~ run function main:lobby/settings/board/element/stats {id1:"stat.total_deaths",fallback1:"Total Deaths:",id2:"stat.total_deaths_by_round",fallback2:"Corrupted Deaths:",id3:"stat.total_deaths_by_quicksand",fallback3:"Quicksand Deaths:",id4:"stat.total_revives",fallback4:"Times Revived:",id5:"",fallback5:"",id6:"",fallback6:""}
tag @s remove check_my_stats

# elements
execute positioned ~-2 ~0.1 ~ run function main:lobby/settings/board/element/rectangle {setting:'setting.stats.page_1',translate:"setting.purple.button.my_stats",fallback:"Show My Stats",background:'"minecraft:gray_concrete"'}
execute positioned ~0.4 ~0.25 ~ run function main:lobby/settings/board/element/arrow_left {"page":"stats","number":"3"}
execute positioned ~1.4 ~0.25 ~ run function main:lobby/settings/board/element/arrow_right {"page":"stats","number":"2"}
execute positioned ~2.425 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.close',texture:'"minecraft:barrier"',background:'"minecraft:air"'}
execute positioned ~3.35 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.change_settings',texture:'"minecraft:command_block"',background:'"minecraft:air"'}
