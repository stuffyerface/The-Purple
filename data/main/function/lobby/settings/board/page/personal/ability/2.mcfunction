tellraw @a[tag=debug] [{"text":"[Console] "},{"selector":"@s"},{"text":" swapped to Ability Page 2."}]
kill @e[tag=settings,tag=!setting.board,tag=!setting.title,distance=..5]

# set title
execute as @n[type=text_display,tag=setting.title] run data merge entity @s {text:'[{"text":"\\n","bold":true},{"translate":"setting.purple.title.spectator_ability","fallback":"Choose Your Spectator Ability","color":"dark_purple"},{"strikethrough":true,"bold":false,"text":"\\n                                            ","color":"gray"}]'}

# elements
execute positioned ~-1.85 ~3.1 ~ run function main:lobby/settings/board/element/rectangle_left {setting:'setting.spectator_ability.fireworks',translate:"setting.purple.button.spectator_ability.fireworks.name",fallback:"Fireworks",texture:'"minecraft:firework_rocket"',background:'"minecraft:gray_concrete"'}
execute positioned ~-1.85 ~2.1 ~ run function main:lobby/settings/board/element/rectangle_left {setting:'setting.spectator_ability.speed',translate:"setting.purple.button.spectator_ability.speed.name",fallback:"Speed Burst",texture:'"minecraft:potion",components:{"minecraft:hide_additional_tooltip":{},"minecraft:potion_contents":{custom_color:61183}}',background:'"minecraft:gray_concrete"'}
execute positioned ~-1.85 ~1.1 ~ run function main:lobby/settings/board/element/rectangle_left {setting:'setting.spectator_ability.teleport',translate:"setting.purple.button.spectator_ability.teleport.name",fallback:"Random Teleport",texture:'"minecraft:ender_eye"',background:'"minecraft:gray_concrete"'}

execute positioned ~2.15 ~3.1 ~ run function main:lobby/settings/board/element/rectangle_right {setting:'setting.spectator_ability.slime',translate:"setting.purple.button.spectator_ability.slime.name",fallback:"Slime Swarm",texture:'"minecraft:slime_ball"',background:'"minecraft:gray_concrete"'}
execute positioned ~2.15 ~2.1 ~ run function main:lobby/settings/board/element/rectangle_right {setting:'setting.spectator_ability.time',translate:"setting.purple.button.spectator_ability.time.name",fallback:"Reduce Timer",texture:'"minecraft:clock"',background:'"minecraft:gray_concrete"'}
execute positioned ~2.15 ~1.1 ~ run function main:lobby/settings/board/element/rectangle_right {setting:'setting.spectator_ability.item',translate:"setting.purple.button.spectator_ability.item.name",fallback:"Item Box",texture:'"minecraft:player_head",components: {"minecraft:profile": {properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmZkY2ZiNDAwOTc2YmY3M2VjMzJjMWI5OTYyYzgzMGZjM2Q3MDA2ZDc0OWY4ZjNkYTNiNmUwZmI4MjkwOWIyOCJ9fX0="}]}}',background:'"minecraft:gray_concrete"'}

execute positioned ~1.5 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.ability.page_1',texture:'"minecraft:popped_chorus_fruit"',background:'"minecraft:air"'}
execute positioned ~2.425 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.close',texture:'"minecraft:barrier"',background:'"minecraft:air"'}
execute positioned ~3.35 ~0.45 ~ run function main:lobby/settings/board/element/square {setting:'setting.change_settings',texture:'"minecraft:command_block"',background:'"minecraft:air"'}
