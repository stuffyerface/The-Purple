tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" swapped to Ability Page 1."}]
kill @e[tag=settings,tag=!setting.board,tag=!setting.title,distance=..5]

# set title
execute as @n[type=text_display,tag=setting.title] run data merge entity @s {text:'[{"text":"\\n","bold":true},{"translate":"setting.purple.title.source_ability","fallback":"Choose Your Infected Ability","color":"dark_purple"},{"strikethrough":true,"bold":false,"text":"\\n                                            ","color":"gray"}]'}

# elements
execute positioned ~-1.85 ~3.1 ~ run function main:lobby/settings/board/element/rectangle_left {setting:'setting.source_ability.speed',translate:"setting.purple.button.source_ability.speed.name",fallback:"Speed Burst",texture:'"minecraft:potion",components:{"minecraft:hide_additional_tooltip":{},"minecraft:potion_contents":{custom_color:61183}}',background:'"minecraft:gray_concrete"'}
execute positioned ~-1.85 ~2.1 ~ run function main:lobby/settings/board/element/rectangle_left {setting:'setting.source_ability.invisible',translate:"setting.purple.button.source_ability.invisible.name",fallback:"Invisibility",texture:'"minecraft:glass"',background:'"minecraft:gray_concrete"'}
execute positioned ~-1.85 ~1.1 ~ run function main:lobby/settings/board/element/rectangle_left {setting:'setting.source_ability.darkness',translate:"setting.purple.button.source_ability.darkness.name",fallback:"Looming Darkness",texture:'"minecraft:dried_kelp"',background:'"minecraft:gray_concrete"'}

execute positioned ~2.15 ~3.1 ~ run function main:lobby/settings/board/element/rectangle_right {setting:'setting.source_ability.corruption',translate:"setting.purple.button.source_ability.corruption.name",fallback:"Corrupt Growth",texture:'"minecraft:chorus_plant"',background:'"minecraft:gray_concrete"'}
execute positioned ~2.15 ~2.1 ~ run function main:lobby/settings/board/element/rectangle_right {setting:'setting.source_ability.reach',translate:"setting.purple.button.source_ability.reach.name",fallback:"Long Arms",texture:'"minecraft:echo_shard"',background:'"minecraft:gray_concrete"'}
#execute positioned ~2.15 ~1.1 ~ run function main:lobby/settings/board/element/rectangle_right {setting:'',translate:"",fallback:"",texture:'"minecraft:"',background:'"minecraft:gray_concrete"'}

execute positioned ~1.5 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.ability.page_2',texture:'"minecraft:ender_eye"',background:'"minecraft:air"'}
execute positioned ~2.425 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.close',texture:'"minecraft:barrier"',background:'"minecraft:air"'}
execute positioned ~3.35 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.change_settings',texture:'"minecraft:command_block"',background:'"minecraft:air"'}
