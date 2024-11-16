execute as @a[tag=return_item.mainhand.LOBBY] run function main:module/item/system/macro/give {id:LOBBY,slot:weapon.mainhand}
execute as @a[tag=return_item.offhand.LOBBY] run function main:module/item/system/macro/give {id:LOBBY,slot:weapon.offhand}

tag @a[tag=return_item.mainhand.LOBBY] remove return_item.mainhand.LOBBY
tag @a[tag=return_item.offhand.LOBBY] remove return_item.offhand.LOBBY
