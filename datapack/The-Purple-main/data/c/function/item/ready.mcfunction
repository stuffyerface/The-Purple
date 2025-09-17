function main:module/item/system/macro/give {id:"READY",slot:"hotbar.4"}
clear @s *[custom_data={id:"NOT_READY"}]
clear @s *[custom_data={id:"SPECTATE_GAME"}]
tag @s remove ready
