$$(raw)
$tellraw @a[tag=admin] ["[Console] ",{"translate":"chat.type.admin","fallback":"[%s: %s]","with":[{"selector":"@s"},"/$(raw)"],"color":"gray","italic":true}]
scoreboard players set .success dummy 1
