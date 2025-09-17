# modify setting value
$execute unless score .item_$(id) settings matches 0.. run scoreboard players set .item_$(id) settings 0
$execute if entity @s[advancements={main:triggers/settings/game/item={lc_$(id)=true}}] if score .item_$(id) settings matches 1.. run scoreboard players set .item_$(id) settings -1
$execute if entity @s[advancements={main:triggers/settings/game/item={lc_$(id)=true}}] if score .item_$(id) settings matches ..0 run scoreboard players add .item_$(id) settings 1
$execute if entity @s[advancements={main:triggers/settings/game/item={lc_$(id)=true}}] if score .item_$(id) settings matches ..-1 run scoreboard players set .item_$(id) settings 0
$execute if entity @s[advancements={main:triggers/settings/game/item={rc_$(id)=true}}] if score .item_$(id) settings matches ..0 run scoreboard players set .item_$(id) settings 2
$execute if entity @s[advancements={main:triggers/settings/game/item={rc_$(id)=true}}] if score .item_$(id) settings matches 0.. run scoreboard players remove .item_$(id) settings 1
$execute if entity @s[advancements={main:triggers/settings/game/item={rc_$(id)=true}}] if score .item_$(id) settings matches 3.. run scoreboard players set .item_$(id) settings 0

# change color
$execute if score .item_$(id) settings matches 0 as @e[type=block_display,tag=setting.items.$(id)] run data merge entity @s {block_state:{Name:"minecraft:red_concrete"}} 
$execute if score .item_$(id) settings matches 1 as @e[type=block_display,tag=setting.items.$(id)] run data merge entity @s {block_state:{Name:"minecraft:lime_concrete"}}

# edit data
$execute if score .item_$(id) settings matches 0 run function main:lobby/settings/game/item/macro {test:"$(id)",rarity:"$(rarity)"}
$execute if score .item_$(id) settings matches 1 unless data storage main:item random.$(rarity)[{components:{"minecraft:custom_data":{id:"$(id)"}}}] run data modify storage main:item random.$(rarity) append from storage main:item id.$(id)
