kill @e[tag=lobby.contributor_display,tag=contributor]

summon minecraft:interaction -40 21 -45 {Tags:["lobby.contributor_display","contributor"], width:1.01f, height:2.5f, response:1b}
summon minecraft:item_display -40 23.1 -45 {Tags:["lobby.contributor_display","contributor"], teleport_duration:1, billboard: "vertical", item: {Count: 1b, id: "minecraft:player_head", components: {"minecraft:profile": {id:[I;1396691993,-1543420904,-1416691953,1376942555],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDM0ZTA2M2NhZmI0NjdhNWM4ZGU0M2VjNzg2MTkzOTlmMzY5ZjRhNTI0MzRkYTgwMTdhOTgzY2RkOTI1MTZhMCJ9fX0="}]}}}, transformation: [-1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,-1f,0f,0f,0f,0f,1f], Passengers: [{id: "minecraft:text_display", Tags:["lobby.contributor_display","contributor"], background: 0, billboard: "vertical", line_width: 200, text: {"translate":"contributor.purple.credit","fallback":"More Contributors","color":"gray"}, alignment: "center", transformation: [1f,0f,0f,0f,0f,1f,0f,0.2f,0f,0f,1f,0f,0f,0f,0f,1f]},{id: "minecraft:text_display", Tags:["lobby.contributor_display","contributor"], background: 0, billboard: "vertical", line_width: 200, text: {"translate":"contributor.purple.credit.view_list","fallback":"Click to view!","color":"gray"}, alignment: "center", transformation: [0.6f,0f,0f,0f,0f,0.6f,0f,-0.8f,0f,0f,0.6f,0f,0f,0f,0f,1f]}]}

playsound minecraft:block.vault.close_shutter block @a[distance=..25] ~ ~ ~ 1 1.2
particle smoke -40 22.7 -45 0 0 0 0.05 25
scoreboard players set .contributor_display data 0
