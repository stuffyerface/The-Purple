playsound minecraft:entity.player.hurt player @s ~ ~ ~ 0.3 1
scoreboard players set @s cooldown.furniture.contributor_display.stuffy 100
scoreboard players set @s actionbar 40
title @s actionbar {"entity":"@n[type=item_display,tag=stuffy]","nbt":"item.components.\"minecraft:profile\".name"}

# animation
execute as @n[type=item_display,tag=lobby.contributor_display,tag=stuffy] run function main:module/cosmetic/animation/contributor_display/trigger

# special interactions


# message
tellraw @s {"translate":"contributor.purple.credit.detailed_line","fallback":"%11$s\n%1$s %10$s %5$s%6$s%7$s%8$s%9$s%10$s %12$s\n\n%2$s\n%3$s\n%4$s\n%11$s","with":[[{"text":"","hover_event":{"action":"show_entity","id":"minecraft:player","uuid":[754748853,1911377587,-1429384264,-1409327390]}},{"translate":"icon.purple.head.stuffy","fallback":"n","font":"purple:head"}," ",{"entity":"@n[type=item_display,tag=stuffy]","nbt":"item.components.\"minecraft:profile\".name","color":"aqua"}],{"translate":"contributor.purple.stuffy.credits.1","fallback":"• Built all of the maps","color":"white"},{"translate":"contributor.purple.stuffy.credits.2","fallback":"• Created most of the furniture","color":"white"},{"translate":"contributor.purple.stuffy.credits.3","fallback":"• Designed much of the game","color":"white"},["",{"translate":"icon.purple.social.discord","fallback":"1","font":"purple:icon","hover_event":{"action":"show_text","value":["",{"translate":"icon.purple.social.discord","fallback":"1","font":"purple:icon"}," ",{"translate":"social.discord","fallback":"Discord","color":"#5865F2"},": @stuffy\n",{"translate":"social.click_me","fallback":"Click to go there!","color":"yellow"}]},"click_event":{"action":"open_url","url":"https://discord.com/users/108359975536992256"}}," "],["",{"translate":"icon.purple.social.twitter","fallback":"2","font":"purple:icon","hover_event":{"action":"show_text","value":["",{"translate":"icon.purple.social.twitter","fallback":"2","font":"purple:icon"}," ",{"translate":"social.twitter","fallback":"Twitter","color":"#1DA1F2"},": @StuffyMC_\n",{"translate":"social.click_me","fallback":"Click to go there!","color":"yellow"}]},"click_event":{"action":"open_url","url":"https://twitter.com/StuffyMC_"}}," "],"","","",{"text":"|","color":"dark_gray"},{"text":"                                                  ","color":"dark_gray","strikethrough":true},{"translate":"contributor.purple.stuffy.title","fallback":"Level Designer","color":"gray"}]}

# -----------------------------------
# X stuffy | 1 2 | Title
# 
# Credits #1
# Credits #2
# Credits #3
# -----------------------------------
# %11$s\n%1$s %10$s %5$s%6$s%7$s%8$s%9$s%10$s %12$s\n\n%2$s\n%3$s\n%4$s\n%11$s
# 
#  1 Head/Username [{"text":"","hover_event":{"action":"show_entity","id":"minecraft:player","uuid":[754748853,1911377587,-1429384264,-1409327390]}},{"translate":"icon.purple.head.stuffy","fallback":"n","font":"purple:head"}," ",{"entity":"@n[type=item_display,tag=stuffy]","nbt":"item.components.\"minecraft:profile\".name","color":"aqua"}]
#  2 Credits #1    {"translate":"contributor.purple.stuffy.credits.1","fallback":"• Built all of the maps","color":"white"}
#  3 Credits #2    {"translate":"contributor.purple.stuffy.credits.2","fallback":"• Created most of the furniture","color":"white"}
#  4 Credits #3    {"translate":"contributor.purple.stuffy.credits.3","fallback":"• Designed much of the game","color":"white"}
#  5 Social Icon 1 ["",{"translate":"icon.purple.social.discord","fallback":"1","font":"purple:icon","hover_event":{"action":"show_text","value":["",{"translate":"icon.purple.social.discord","fallback":"1","font":"purple:icon"}," ",{"translate":"social.discord","fallback":"Discord","color":"#5865F2"},": @stuffy\n",{"translate":"social.click_me","fallback":"Click to go there!","color":"yellow"}]},"click_event":{"action":"open_url","url":"https://discord.com/users/108359975536992256"}}," "]
#  6 Social Icon 2 ["",{"translate":"icon.purple.social.twitter","fallback":"2","font":"purple:icon","hover_event":{"action":"show_text","value":["",{"translate":"icon.purple.social.twitter","fallback":"2","font":"purple:icon"}," ",{"translate":"social.twitter","fallback":"Twitter","color":"#1DA1F2"},": @StuffyMC_\n",{"translate":"social.click_me","fallback":"Click to go there!","color":"yellow"}]},"click_event":{"action":"open_url","url":"https://twitter.com/StuffyMC_"}}," "]
#  7 Social Icon 3 ["",{"translate":"icon.purple.social.youtube","fallback":"3","font":"purple:icon","hover_event":{"action":"show_text","value":["",{"translate":"icon.purple.social.youtube","fallback":"3","font":"purple:icon"}," ",{"translate":"social.youtube","fallback":"YouTube","color":"#FF0000"},": @stuffy\n",{"translate":"social.click_me","fallback":"Click to go there!","color":"yellow"}]},"click_event":{"action":"open_url","url":"https://www.youtube.com/"}}," "]
#  8 Social Icon 4 ["",{"translate":"icon.purple.social.???????","fallback":"4","font":"purple:icon","hover_event":{"action":"show_text","value":["",{"translate":"icon.purple.social.???????","fallback":"4","font":"purple:icon"}," ",{"translate":"social.???????","fallback":"???????","color":"white"},": @stuffy\n",{"translate":"social.click_me","fallback":"Click to go there!","color":"yellow"}]},"click_event":{"action":"open_url","url":"https://minecraft.net/"}}," "]
#  9 Social Icon 5 ["",{"translate":"icon.purple.social.???????","fallback":"5","font":"purple:icon","hover_event":{"action":"show_text","value":["",{"translate":"icon.purple.social.???????","fallback":"5","font":"purple:icon"}," ",{"translate":"social.???????","fallback":"???????","color":"white"},": @stuffy\n",{"translate":"social.click_me","fallback":"Click to go there!","color":"yellow"}]},"click_event":{"action":"open_url","url":"https://minecraft.net/"}}," "]
# 10 pipe          {"text":"|","color":"dark_gray"}
# 11 line          {"text":"                                                  ","color":"dark_gray","strikethrough":true}
# 12 title         {"translate":"contributor.purple.stuffy.title","fallback":"Level Designer","color":"gray"}
