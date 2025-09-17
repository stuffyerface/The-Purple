execute if entity @n[type=item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{id:READY}}}}] run return 0
execute if entity @n[type=item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{id:NOT_READY}}}}] run return 0

execute if entity @s[tag=!ready] run function c:item/ready
execute if entity @s[tag=ready] run function c:item/not_ready
