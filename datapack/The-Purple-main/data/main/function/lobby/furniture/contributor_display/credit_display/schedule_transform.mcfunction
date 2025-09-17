# shrink 
execute as @e[type=item_display,tag=lobby.contributor_display,tag=kill_this_display] run data merge entity @s {transformation: [-1f,0f,0f,-1.25f,0f,1f,0f,0f,0f,0f,-1f,0f,0f,0f,0f,19.5f], start_interpolation:0, interpolation_duration:10}
execute as @e[type=text_display,tag=lobby.contributor_display,tag=kill_this_display] run data merge entity @s {transformation: [1f,0f,0f,1.25f,0f,1f,0f,-0.75f,0f,0f,1f,0f,0f,0f,0f,20.0f], start_interpolation:0, interpolation_duration:10}

# grow
execute as @e[type=item_display,tag=lobby.contributor_display,tag=bottom] run data merge entity @s {transformation: [-1f,0f,0f,-1.25f,0f,1f,0f,0f,0f,0f,-1f,0f,0f,0f,0f,1.5f], start_interpolation:0, interpolation_duration:10}
execute as @e[type=text_display,tag=lobby.contributor_display,tag=bottom] run data merge entity @s {transformation: [1f,0f,0f,1.25f,0f,1f,0f,-0.75f,0f,0f,1f,0f,0f,0f,0f,2.0f], start_interpolation:0, interpolation_duration:10}
