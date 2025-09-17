kill @e[tag=lobby.contributor_display,tag=contributor]

# common
summon minecraft:interaction -40 21 -45 {Tags:["lobby.contributor_display","contributor"], width:2.5f, height:2.5f, response:1b}
summon minecraft:text_display -40 23.4 -45 {Tags:["lobby.contributor_display","contributor","donttpme"], background: 0, shadow:1b, billboard: "vertical", line_width: 200, text: {"translate":"contributor.purple.credit.gratitude","fallback":"Thank You!","color":"gray"}, alignment: "center", transformation: [1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f,0.05f,0f,0f,0f,1.5f]}
summon minecraft:item_display -40 22.95 -45 {Tags:["lobby.contributor_display","contributor","donttpme"], billboard: "vertical", item: {Count: 1b, id: "minecraft:player_head", components: {"minecraft:profile": {id:[I;-1311461269,-833600967,-1172172254,96213266],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTE1NmIzMWNiZjhmNzc0NTQ3ZGMzZjk3MTNhNzcwZWNjNWM3MjdkOTY3Y2IwMDkzZjI2NTQ2YjkyMDQ1NzM4NyJ9fX0="}]}}}, transformation: [-1f,0f,0f,-3f,0f,1f,0f,-0.15f,0f,0f,-1f,0f,0f,0f,0f,2.5f]}

# lines
scoreboard players set .disable_contributor_cosmetics dummy 1
execute positioned -40 23.35 -45 run function c:build/contributor_display/credit/name/raster {line:'top'}
execute positioned -40 22.95 -45 run function c:build/contributor_display/credit/name/blockym {line:'middle'}
execute positioned -40 22.55 -45 run function c:build/contributor_display/credit/name/evtema3 {line:'bottom'}
scoreboard players reset .disable_contributor_cosmetics dummy
