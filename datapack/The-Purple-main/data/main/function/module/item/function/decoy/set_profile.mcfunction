data merge entity @s {Tags:["new_decoy_name"], text:{selector:'@p[tag=this_player]'}, alignment:"center"}
data modify entity @n[tag=new_decoy_mannequin] CustomName set from entity @s text.hover_event.name
data modify entity @n[tag=new_decoy_mannequin] profile.id set from entity @s text.hover_event.uuid
kill @s
