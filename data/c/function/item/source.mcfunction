execute if entity @s[tag=infected] if score @s source_ability matches 1 run return run function main:module/item/system/macro/give {id:"SOURCE_ABILITY_1",slot:"weapon.mainhand"}
execute if entity @s[tag=infected] if score @s source_ability matches 2 run return run function main:module/item/system/macro/give {id:"SOURCE_ABILITY_2",slot:"weapon.mainhand"}
execute if entity @s[tag=infected] if score @s source_ability matches 3 run return run function main:module/item/system/macro/give {id:"SOURCE_ABILITY_3",slot:"weapon.mainhand"}
execute if entity @s[tag=infected] if score @s source_ability matches 4 run return run function main:module/item/system/macro/give {id:"SOURCE_ABILITY_4",slot:"weapon.mainhand"}
execute if entity @s[tag=infected] if score @s source_ability matches 5 run return run function main:module/item/system/macro/give {id:"SOURCE_ABILITY_5",slot:"weapon.mainhand"}
execute if entity @s[tag=infected] if score @s source_ability matches 6 run return run function main:module/item/system/macro/give {id:"SOURCE_ABILITY_6",slot:"weapon.mainhand"}
execute if entity @s[tag=corrupted] if score @s spectator_ability matches 1 run return run function main:module/item/system/macro/give {id:"SOURCE_SPECTATOR_1",slot:"weapon.mainhand"}
execute if entity @s[tag=corrupted] if score @s spectator_ability matches 2 run return run function main:module/item/system/macro/give {id:"SOURCE_SPECTATOR_2",slot:"weapon.mainhand"}
execute if entity @s[tag=corrupted] if score @s spectator_ability matches 3 run return run function main:module/item/system/macro/give {id:"SOURCE_SPECTATOR_3",slot:"weapon.mainhand"}
execute if entity @s[tag=corrupted] if score @s spectator_ability matches 4 run return run function main:module/item/system/macro/give {id:"SOURCE_SPECTATOR_4",slot:"weapon.mainhand"}
execute if entity @s[tag=corrupted] if score @s spectator_ability matches 5 run return run function main:module/item/system/macro/give {id:"SOURCE_SPECTATOR_5",slot:"weapon.mainhand"}
execute if entity @s[tag=corrupted] if score @s spectator_ability matches 6 run return run function main:module/item/system/macro/give {id:"SOURCE_SPECTATOR_6",slot:"weapon.mainhand"}

function main:module/item/system/macro/give {id:"SOURCE",slot:"weapon.mainhand"}
