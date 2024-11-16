tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"}," swapped to Stats Page 3."]
kill @e[tag=settings,tag=!setting.board,tag=!setting.title,distance=..5]
tag @s add check_my_stats

# set title
execute as @n[type=text_display,tag=setting.title] run data merge entity @n[type=text_display,tag=setting.title] {text:'[{"text":"\\n","bold":true},{"translate":"setting.purple.title.stats","fallback":"%s\'s Statistics","color":"dark_purple","with":[{"selector":"@p[tag=check_my_stats]"}]},{"strikethrough":true,"bold":false,"text":"\\n                                             ","color":"gray"}]'}

# stats
execute positioned ~-3 ~0.75 ~ run function main:lobby/settings/board/element/stats_item {id1:"stat.fish.broken_fishing_rod",texture1:'"minecraft:fishing_rod"',id2:"stat.fish.sunken_raft",texture2:'"minecraft:bamboo_raft"',id3:"stat.fish.discarded_fuel_rod",texture3:'"minecraft:breeze_rod"',id4:"stat.fish.lost_soil_sample",texture4:'"minecraft:flower_pot"',id5:"stat.fish.old_brush",texture5:'"minecraft:brush"',id6:"",texture6:'"minecraft:air"'}
execute positioned ~-1 ~0.75 ~ run function main:lobby/settings/board/element/stats_item {id1:"stat.fish.glowing_minnow",texture1:'"minecraft:tropical_fish",components:{"minecraft:enchantment_glint_override":true}',id2:"stat.fish.squishscale",texture2:'"minecraft:fermented_spider_eye"',id3:"stat.fish.crimson_drifter",texture3:'"minecraft:beetroot"',id4:"stat.fish.purple_shellfish",texture4:'"minecraft:popped_chorus_fruit"',id5:"",texture5:'"minecraft:air"',id6:"",texture6:'"minecraft:air"'}
execute positioned ~1 ~0.75 ~ run function main:lobby/settings/board/element/stats_item {id1:"stat.fish.diving_mask",texture1:'"minecraft:tinted_glass"',id2:"stat.fish.oxygen_tank",texture2:'"minecraft:silence_armor_trim_smithing_template"',id3:"stat.fish.wetsuit_pants",texture3:'"minecraft:netherite_leggings"',id4:"stat.fish.wetsuit_fins",texture4:'"minecraft:leather_boots",components:{"minecraft:dyed_color":7233118,"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:wild"}}',id5:"",texture5:'"minecraft:air"',id6:"",texture6:'"minecraft:air"'}
#execute positioned ~3 ~0.75 ~ run function main:lobby/settings/board/element/stats_item {id1:"",texture1:'"minecraft:air"',id2:"",texture2:'"minecraft:air"',id3:"",texture3:'"minecraft:air"',id4:"",texture4:'"minecraft:air"',id5:"",texture5:'"minecraft:air"',id6:"",texture6:'"minecraft:air"'}
tag @s remove check_my_stats

# elements
execute positioned ~-2 ~0.1 ~ run function main:lobby/settings/board/element/rectangle {setting:'setting.stats.page_3',translate:"setting.purple.button.my_stats",fallback:"Show My Stats",background:'"minecraft:gray_concrete"'}
execute positioned ~0.4 ~0.25 ~ run function main:lobby/settings/board/element/arrow_left {"page":"stats","number":"2"}
execute positioned ~1.4 ~0.25 ~ run function main:lobby/settings/board/element/arrow_right {"page":"stats","number":"1"}
execute positioned ~2.425 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.close',texture:'"minecraft:barrier"',background:'"minecraft:air"'}
execute positioned ~3.35 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.change_settings',texture:'"minecraft:command_block"',background:'"minecraft:air"'}
