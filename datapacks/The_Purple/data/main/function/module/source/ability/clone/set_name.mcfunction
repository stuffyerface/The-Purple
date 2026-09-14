tag @s add this_player
summon text_display ~ ~ ~ {Tags:["new_clone_name"], text: {selector:'@p[tag=this_player]'}, alignment: "center"}
data modify entity @n[tag=new_clone_mannequin] CustomName set from entity @n[type=text_display,tag=new_clone_name] text.hover_event.name
data modify entity @n[tag=new_clone_mannequin] profile.id set from entity @n[type=text_display,tag=new_clone_name] text.hover_event.uuid
kill @e[tag=new_clone_name]
tag @s remove this_player
