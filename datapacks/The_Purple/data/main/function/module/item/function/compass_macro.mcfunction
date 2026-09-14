execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{id:"COMPASS"}] run return fail
$item modify entity @s weapon.mainhand {type:"minecraft:set_components",components:{"minecraft:lodestone_tracker":{target:{pos:$(pos),dimension:"$(dimension)"},tracked:false}}}
execute if items entity @s weapon.mainhand *[minecraft:damage=3] run item modify entity @s weapon.mainhand {type:"minecraft:set_components",components:{"minecraft:damage":4}}
execute if items entity @s weapon.mainhand *[minecraft:damage=2] run item modify entity @s weapon.mainhand {type:"minecraft:set_components",components:{"minecraft:damage":3}}
execute if items entity @s weapon.mainhand *[minecraft:damage=1] run item modify entity @s weapon.mainhand {type:"minecraft:set_components",components:{"minecraft:damage":2}}
execute if items entity @s weapon.mainhand *[minecraft:damage=0] run item modify entity @s weapon.mainhand {type:"minecraft:set_components",components:{"minecraft:damage":1}}
execute if items entity @s weapon.mainhand *[minecraft:damage=4] run playsound minecraft:entity.item.break player @s
