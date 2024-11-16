tag @s remove alive
tag @s remove infected
tag @s remove source
tag @s remove spectator
tag @s add corrupted
attribute @s minecraft:scale modifier add purple:corrupted -0.25 add_value
effect give @s minecraft:weakness infinite 255 true
function main:id/team/set_color
function main:module/disconnect/sync/marker

# items
execute if predicate main:has_item/source run clear @s *[minecraft:custom_data={id:THE_PURPLE}]
item replace entity @s armor.head with minecraft:calibrated_sculk_sensor[hide_tooltip={},enchantments={levels:{"minecraft:binding_curse":1}},enchantment_glint_override=false,equippable={slot:"head",equip_sound:"minecraft:intentionally_empty",camera_overlay:"misc/purple_corruption"}]
function main:module/cosmetic/corrupted_armor
function main:module/item/system/macro/give {id:"LOBBY",slot:"hotbar.8"}
function main:module/item/system/macro/give {id:"SPECTATE",slot:"hotbar.7"}
execute if score @s spectator_ability matches 1 run function main:module/item/system/macro/give {id:"SOURCE_SPECTATOR_1",slot:"hotbar.0"}
execute if score @s spectator_ability matches 2 run function main:module/item/system/macro/give {id:"SOURCE_SPECTATOR_2",slot:"hotbar.0"}
execute if score @s spectator_ability matches 3 run function main:module/item/system/macro/give {id:"SOURCE_SPECTATOR_3",slot:"hotbar.0"}
execute if score @s spectator_ability matches 4 run function main:module/item/system/macro/give {id:"SOURCE_SPECTATOR_4",slot:"hotbar.0"}
execute if score @s spectator_ability matches 5 run function main:module/item/system/macro/give {id:"SOURCE_SPECTATOR_5",slot:"hotbar.0"}
execute if score @s spectator_ability matches 6 run function main:module/item/system/macro/give {id:"SOURCE_SPECTATOR_6",slot:"hotbar.0"}
