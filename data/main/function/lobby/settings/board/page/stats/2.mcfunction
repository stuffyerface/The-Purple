tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"}," swapped to Stats Page 2."]
kill @e[tag=settings,tag=!setting.board,tag=!setting.title,distance=..5]
tag @s add check_my_stats

# set title
execute as @n[type=text_display,tag=setting.title] run data merge entity @n[type=text_display,tag=setting.title] {text:[{"text":"\n","bold":true},{"translate":"setting.purple.title.stats","fallback":"%s's Statistics","color":"dark_purple","with":[{"selector":"@p[tag=check_my_stats]"}]},{"strikethrough":true,"bold":false,"text":"\n                                             ","color":"gray"}]}

# stats
execute positioned ~-3 ~0.75 ~ run function main:lobby/settings/board/element/stats_item {id1:"stat.item.small_mushroom",texture1:'"minecraft:player_head",components:{"minecraft:profile": {properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY5NmI4ZDAxZjU4MzVlZDM4YWZkNDUzMDIyOGQwYjVhYmI3ZDQ1YTM1NTUxOWVhNjgwYzQwZmZjYTMyZWRmMiJ9fX0="}]}}',id2:"stat.item.instant_chorus_fruit",texture2:'"minecraft:chorus_fruit"',id3:"stat.item.ender_pearl",texture3:'"minecraft:ender_pearl"',id4:"stat.item.glow_horn",texture4:'"minecraft:goat_horn"',id5:"stat.item.totem_of_undying",texture5:'"minecraft:totem_of_undying"',id6:"stat.item.trident",texture6:'"minecraft:trident"'}
execute positioned ~-1 ~0.75 ~ run function main:lobby/settings/board/element/stats_item {id1:"stat.item.safety_vest",texture1:'"minecraft:leather_chestplate",components:{"minecraft:trim": {material: "minecraft:iron", pattern: "minecraft:host"}, "minecraft:dyed_color": 16742400}',id2:"stat.item.prison_key",texture2:'"minecraft:trial_key"',id3:"stat.item.compass",texture3:'"minecraft:compass"',id4:"stat.item.freeze_time",texture4:'"minecraft:clock"',id5:"stat.item.smoke_bomb",texture5:'"minecraft:lingering_potion",components:{"minecraft:potion_contents":{custom_color:7829367}}',id6:"stat.item.antidote",texture6:'"minecraft:potion",components:{"minecraft:potion_contents":{custom_color:16711680}}'}
execute positioned ~1 ~0.75 ~ run function main:lobby/settings/board/element/stats_item {id1:"stat.item.wind_charge",texture1:'"minecraft:wind_charge"',id2:"stat.item.revival_potion",texture2:'"minecraft:splash_potion",components:{"minecraft:potion_contents":{custom_color:16768256}}',id3:"",texture3:'"minecraft:barrier"',id4:"",texture4:'"minecraft:barrier"',id5:"",texture5:'"minecraft:barrier"',id6:"",texture6:'"minecraft:barrier"'}
#execute positioned ~3 ~0.75 ~ run function main:lobby/settings/board/element/stats_item {id1:"",texture1:'"minecraft:barrier"',id2:"",texture2:'"minecraft:barrier"',id3:"",texture3:'"minecraft:barrier"',id4:"",texture4:'"minecraft:barrier"',id5:"",texture5:'"minecraft:barrier"',id6:"",texture6:'"minecraft:barrier"'}
tag @s remove check_my_stats

# elements
execute positioned ~-2 ~0.1 ~ run function main:lobby/settings/board/element/rectangle {setting:'setting.stats.page_2',translate:"setting.purple.button.my_stats",fallback:"Show My Stats",background:'"minecraft:gray_concrete"'}
execute positioned ~0.4 ~0.25 ~ run function main:lobby/settings/board/element/arrow_left {"page":"stats","number":"1"}
execute positioned ~1.4 ~0.25 ~ run function main:lobby/settings/board/element/arrow_right {"page":"stats","number":"3"}
execute positioned ~2.425 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.close',texture:'"minecraft:barrier"',background:'"minecraft:air"'}
execute positioned ~3.35 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.change_settings',texture:'"minecraft:command_block"',background:'"minecraft:air"'}
