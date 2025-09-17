execute as @a[tag=return_item.mainhand.SPECTATE] run function main:module/item/system/macro/give {id:SPECTATE,slot:weapon.mainhand}
execute as @a[tag=return_item.offhand.SPECTATE] run function main:module/item/system/macro/give {id:SPECTATE,slot:weapon.offhand}
execute as @a[tag=return_item.mainhand.SPECTATE_GAME] run function main:module/item/system/macro/give {id:SPECTATE_GAME,slot:weapon.mainhand}
execute as @a[tag=return_item.offhand.SPECTATE_GAME] run function main:module/item/system/macro/give {id:SPECTATE_GAME,slot:weapon.offhand}

tag @a[tag=return_item.mainhand.SPECTATE] remove return_item.mainhand.SPECTATE
tag @a[tag=return_item.offhand.SPECTATE] remove return_item.offhand.SPECTATE
tag @a[tag=return_item.mainhand.SPECTATE_GAME] remove return_item.mainhand.SPECTATE_GAME
tag @a[tag=return_item.offhand.SPECTATE_GAME] remove return_item.offhand.SPECTATE_GAME
