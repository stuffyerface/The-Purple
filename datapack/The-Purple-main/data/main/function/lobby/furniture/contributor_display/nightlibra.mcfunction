playsound minecraft:entity.player.hurt player @s ~ ~ ~ 0.3 1
scoreboard players set @s cooldown.furniture.contributor_display.nightlibra 100
scoreboard players set @s actionbar 40
title @s actionbar {"entity":"@n[type=item_display,tag=nightlibra]","nbt":"item.components.\"minecraft:profile\".name"}

# animation
execute as @n[type=item_display,tag=lobby.contributor_display,tag=nightlibra] run function main:module/cosmetic/animation/contributor_display/trigger

# special interactions
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:SUPER_FISHING_ROD}}}}] run return run title @s actionbar {"translate":"message.purple.lobby.nightlibra.already_upgraded","fallback":"You already have my Fishing Rod!","color":"red"}
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:FISHING_ROD}}}}] run title @s actionbar {"translate":"message.purple.lobby.nightlibra.super_fishing_rod","fallback":"I've upgraded your Fishing Rod!","color":"green"}
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:FISHING_ROD}}}}] run playsound minecraft:entity.player.levelup block @s ~ ~ ~ 1 2
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{id:FISHING_ROD}}}}] run return run item replace entity @s weapon.mainhand from entity @s weapon.mainhand main:upgrade/fishing_rod

# message
tellraw @s {"translate":"contributor.purple.credit.detailed_line","fallback":"%11$s\n%1$s %10$s %5$s%6$s%7$s%8$s%9$s%10$s %12$s\n\n%2$s\n%3$s\n%4$s\n%11$s","with":[[{"text":"","hover_event":{"action":"show_entity","id":"minecraft:player","uuid":[-1364134607,-750761016,-1398478805,842316956]}},{"translate":"icon.purple.head.nightlibra","fallback":"n","font":"purple:head"}," ",{"entity":"@n[type=item_display,tag=nightlibra]","nbt":"item.components.\"minecraft:profile\".name","color":"aqua"}],{"translate":"contributor.purple.nightlibra.credits.1","fallback":"• Developed most of the game","color":"white"},{"translate":"contributor.purple.nightlibra.credits.2","fallback":"• Designed most of the game","color":"white"},{"translate":"contributor.purple.nightlibra.credits.3","fallback":"• Added tons of small map details","color":"white"},["",{"translate":"icon.purple.social.discord","fallback":"1","font":"purple:icon","hover_event":{"action":"show_text","value":["",{"translate":"icon.purple.social.discord","fallback":"1","font":"purple:icon"}," ",{"translate":"social.discord","fallback":"Discord","color":"#5865F2"},": @nightlibra\n",{"translate":"social.click_me","fallback":"Click to go there!","color":"yellow"}]},"click_event":{"action":"open_url","url":"https://discord.com/users/273231421961797632"}}," "],["",{"translate":"icon.purple.social.twitter","fallback":"2","font":"purple:icon","hover_event":{"action":"show_text","value":["",{"translate":"icon.purple.social.twitter","fallback":"2","font":"purple:icon"}," ",{"translate":"social.twitter","fallback":"Twitter","color":"#1DA1F2"},": @nightlibra\n",{"translate":"social.click_me","fallback":"Click to go there!","color":"yellow"}]},"click_event":{"action":"open_url","url":"https://twitter.com/nightlibra"}}," "],["",{"translate":"icon.purple.social.youtube","fallback":"3","font":"purple:icon","hover_event":{"action":"show_text","value":["",{"translate":"icon.purple.social.youtube","fallback":"3","font":"purple:icon"}," ",{"translate":"social.youtube","fallback":"YouTube","color":"#FF0000"},": @nightlibra\n",{"translate":"social.click_me","fallback":"Click to go there!","color":"yellow"}]},"click_event":{"action":"open_url","url":"https://www.youtube.com/@nightlibra"}}," "],"","",{"text":"|","color":"dark_gray"},{"text":"                                                  ","color":"dark_gray","strikethrough":true},{"translate":"contributor.purple.nightlibra.title","fallback":"Game Developer","color":"gray"}]}

# -----------------------------------
# X nightlibra | 1 2 3 | Title
# 
# Credits #1
# Credits #2
# Credits #3
# -----------------------------------
# %11$s\n%1$s %10$s %5$s%6$s%7$s%8$s%9$s%10$s %12$s\n\n%2$s\n%3$s\n%4$s\n%11$s
# 
#  1 Head/Username [{"text":"","hover_event":{"action":"show_entity","id":"minecraft:player","uuid":[-1364134607,-750761016,-1398478805,842316956]},{"translate":"icon.purple.head.nightlibra","fallback":"n","font":"purple:head"}," ",{"entity":"@n[type=item_display,tag=nightlibra]","nbt":"item.components.\"minecraft:profile\".name","color":"aqua"}]
#  2 Credits #1    {"translate":"contributor.purple.nightlibra.credits.1","fallback":"• Developed most of the game","color":"white"}
#  3 Credits #2    {"translate":"contributor.purple.nightlibra.credits.2","fallback":"• Designed most of the game","color":"white"}
#  4 Credits #3    {"translate":"contributor.purple.nightlibra.credits.3","fallback":"• Added tons of small map details","color":"white"}
#  5 Social Icon 1 ["",{"translate":"icon.purple.social.discord","fallback":"1","font":"purple:icon","hover_event":{"action":"show_text","value":["",{"translate":"icon.purple.social.discord","fallback":"1","font":"purple:icon"}," ",{"translate":"social.discord","fallback":"Discord","color":"#5865F2"},": @nightlibra\n",{"translate":"social.click_me","fallback":"Click to go there!","color":"yellow"}]},"click_event":{"action":"open_url","url":"https://discord.com/users/273231421961797632"}}," "]
#  6 Social Icon 2 ["",{"translate":"icon.purple.social.twitter","fallback":"2","font":"purple:icon","hover_event":{"action":"show_text","value":["",{"translate":"icon.purple.social.twitter","fallback":"2","font":"purple:icon"}," ",{"translate":"social.twitter","fallback":"Twitter","color":"#1DA1F2"},": @nightlibra\n",{"translate":"social.click_me","fallback":"Click to go there!","color":"yellow"}]},"click_event":{"action":"open_url","url":"https://twitter.com/nightlibra"}}," "]
#  7 Social Icon 3 ["",{"translate":"icon.purple.social.youtube","fallback":"3","font":"purple:icon","hover_event":{"action":"show_text","value":["",{"translate":"icon.purple.social.youtube","fallback":"3","font":"purple:icon"}," ",{"translate":"social.youtube","fallback":"YouTube","color":"#FF0000"},": @nightlibra\n",{"translate":"social.click_me","fallback":"Click to go there!","color":"yellow"}]},"click_event":{"action":"open_url","url":"https://www.youtube.com/@nightlibra"}}," "]
#  8 Social Icon 4 ["",{"translate":"icon.purple.social.???????","fallback":"4","font":"purple:icon","hover_event":{"action":"show_text","value":["",{"translate":"icon.purple.social.???????","fallback":"4","font":"purple:icon"}," ",{"translate":"social.???????","fallback":"???????","color":"white"},": @nightlibra\n",{"translate":"social.click_me","fallback":"Click to go there!","color":"yellow"}]},"click_event":{"action":"open_url","url":"https://minecraft.net/"}}," "]
#  9 Social Icon 5 ["",{"translate":"icon.purple.social.???????","fallback":"5","font":"purple:icon","hover_event":{"action":"show_text","value":["",{"translate":"icon.purple.social.???????","fallback":"5","font":"purple:icon"}," ",{"translate":"social.???????","fallback":"???????","color":"white"},": @nightlibra\n",{"translate":"social.click_me","fallback":"Click to go there!","color":"yellow"}]},"click_event":{"action":"open_url","url":"https://minecraft.net/"}}," "]
# 10 pipe          {"text":"|","color":"dark_gray"}
# 11 line          {"text":"                                                  ","color":"dark_gray","strikethrough":true}
# 12 title         {"translate":"contributor.purple.nightlibra.title","fallback":"Game Developer","color":"gray"}
