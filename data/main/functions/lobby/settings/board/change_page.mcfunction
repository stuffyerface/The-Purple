# left-click
execute if entity @s[advancements={main:triggers/settings/change_page={cover_lc=true}}] at @e[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/cover
execute if entity @s[advancements={main:triggers/settings/change_page={settings_lc=true}}] at @e[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/setting_list
execute if entity @s[advancements={main:triggers/settings/change_page={map_1_lc=true}}] at @e[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/map/1
execute if entity @s[advancements={main:triggers/settings/change_page={map_2_lc=true}}] at @e[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/map/2
execute if entity @s[advancements={main:triggers/settings/change_page={map_3_lc=true}}] at @e[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/map/3
execute if entity @s[advancements={main:triggers/settings/change_page={game_1_lc=true}}] at @e[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/game/1
execute if entity @s[advancements={main:triggers/settings/change_page={game_2_lc=true}}] at @e[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/game/2

# right-click
execute if entity @s[advancements={main:triggers/settings/change_page={cover_rc=true}}] at @e[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/cover
execute if entity @s[advancements={main:triggers/settings/change_page={settings_rc=true}}] at @e[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/setting_list
execute if entity @s[advancements={main:triggers/settings/change_page={map_1_rc=true}}] at @e[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/map/1
execute if entity @s[advancements={main:triggers/settings/change_page={map_2_rc=true}}] at @e[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/map/2
execute if entity @s[advancements={main:triggers/settings/change_page={map_3_rc=true}}] at @e[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/map/3
execute if entity @s[advancements={main:triggers/settings/change_page={game_1_rc=true}}] at @e[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/game/1
execute if entity @s[advancements={main:triggers/settings/change_page={game_2_rc=true}}] at @e[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/game/2

# clean up
playsound minecraft:ui.button.click block @s
advancement revoke @s only main:triggers/settings/change_page
