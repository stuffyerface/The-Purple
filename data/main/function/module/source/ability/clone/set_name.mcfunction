summon text_display ~ ~ ~ {Tags:["new_clone_name"], text: [{"translate":"entity.purple.clone","fallback":"%s's Clone","with":[{"entity":"@n[tag=new_clone]","nbt":"equipment.head.components.\"minecraft:profile\".name"}]}], alignment: "center"}
data modify entity @s CustomName set from entity @n[type=text_display,tag=new_clone_name] text
kill @e[tag=new_clone_name]
