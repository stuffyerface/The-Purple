execute unless entity @s[tag=within_setting_board_boundries] run return run advancement revoke @s only main:triggers/settings/change_page

# left-click
execute if entity @s[advancements={main:triggers/settings/change_page={cover_lc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/cover
execute if entity @s[advancements={main:triggers/settings/change_page={settings_lc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/setting_list
execute if entity @s[advancements={main:triggers/settings/change_page={stats_1_lc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/stats/1
execute if entity @s[advancements={main:triggers/settings/change_page={stats_2_lc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/stats/2
execute if entity @s[advancements={main:triggers/settings/change_page={stats_3_lc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/stats/3
execute if entity @s[advancements={main:triggers/settings/change_page={map_x_lc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/map/coming_soon
execute if entity @s[advancements={main:triggers/settings/change_page={map_0_lc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/map/0
execute if entity @s[advancements={main:triggers/settings/change_page={map_1_lc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/map/1
execute if entity @s[advancements={main:triggers/settings/change_page={map_2_lc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/map/2
execute if entity @s[advancements={main:triggers/settings/change_page={map_3_lc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/map/3
execute if entity @s[advancements={main:triggers/settings/change_page={game_1_lc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/game/1
execute if entity @s[advancements={main:triggers/settings/change_page={game_2_lc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/game/2
execute if entity @s[advancements={main:triggers/settings/change_page={game_3_lc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/game/3
execute if entity @s[advancements={main:triggers/settings/change_page={game_4_lc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/game/4
execute if entity @s[advancements={main:triggers/settings/change_page={game_5_lc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/game/5
execute if entity @s[advancements={main:triggers/settings/change_page={game_6_lc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/game/6
execute if entity @s[advancements={main:triggers/settings/change_page={game_7_lc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/game/7
execute if entity @s[advancements={main:triggers/settings/change_page={game_8_lc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/game/8
execute if entity @s[advancements={main:triggers/settings/change_page={presets_1_lc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/game/presets/1
execute if entity @s[advancements={main:triggers/settings/change_page={presets_2_lc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/game/presets/2
execute if entity @s[advancements={main:triggers/settings/change_page={item_1_lc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/item/1
execute if entity @s[advancements={main:triggers/settings/change_page={item_2_lc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/item/2
execute if entity @s[advancements={main:triggers/settings/change_page={cosmetic_1_lc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/personal/cosmetic/1
execute if entity @s[advancements={main:triggers/settings/change_page={cosmetic_2_lc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/personal/cosmetic/2
execute if entity @s[advancements={main:triggers/settings/change_page={cosmetic_3_lc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/personal/cosmetic/3
execute if entity @s[advancements={main:triggers/settings/change_page={ability_1_lc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/personal/ability/1
execute if entity @s[advancements={main:triggers/settings/change_page={ability_2_lc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/personal/ability/2

# right-click
execute if entity @s[advancements={main:triggers/settings/change_page={cover_rc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/cover
execute if entity @s[advancements={main:triggers/settings/change_page={settings_rc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/setting_list
execute if entity @s[advancements={main:triggers/settings/change_page={stats_1_rc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/stats/1
execute if entity @s[advancements={main:triggers/settings/change_page={stats_2_rc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/stats/2
execute if entity @s[advancements={main:triggers/settings/change_page={stats_3_rc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/stats/3
execute if entity @s[advancements={main:triggers/settings/change_page={map_x_rc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/map/coming_soon
execute if entity @s[advancements={main:triggers/settings/change_page={map_0_rc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/map/0
execute if entity @s[advancements={main:triggers/settings/change_page={map_1_rc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/map/1
execute if entity @s[advancements={main:triggers/settings/change_page={map_2_rc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/map/2
execute if entity @s[advancements={main:triggers/settings/change_page={map_3_rc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/map/3
execute if entity @s[advancements={main:triggers/settings/change_page={game_1_rc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/game/1
execute if entity @s[advancements={main:triggers/settings/change_page={game_2_rc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/game/2
execute if entity @s[advancements={main:triggers/settings/change_page={game_3_rc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/game/3
execute if entity @s[advancements={main:triggers/settings/change_page={game_4_rc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/game/4
execute if entity @s[advancements={main:triggers/settings/change_page={game_5_rc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/game/5
execute if entity @s[advancements={main:triggers/settings/change_page={game_6_rc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/game/6
execute if entity @s[advancements={main:triggers/settings/change_page={game_7_rc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/game/7
execute if entity @s[advancements={main:triggers/settings/change_page={game_8_rc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/game/8
execute if entity @s[advancements={main:triggers/settings/change_page={presets_1_rc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/game/presets/1
execute if entity @s[advancements={main:triggers/settings/change_page={presets_2_rc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/game/presets/2
execute if entity @s[advancements={main:triggers/settings/change_page={item_1_rc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/item/1
execute if entity @s[advancements={main:triggers/settings/change_page={item_2_rc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/item/2
execute if entity @s[advancements={main:triggers/settings/change_page={cosmetic_1_rc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/personal/cosmetic/1
execute if entity @s[advancements={main:triggers/settings/change_page={cosmetic_2_rc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/personal/cosmetic/2
execute if entity @s[advancements={main:triggers/settings/change_page={cosmetic_3_rc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/personal/cosmetic/3
execute if entity @s[advancements={main:triggers/settings/change_page={ability_1_rc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/personal/ability/1
execute if entity @s[advancements={main:triggers/settings/change_page={ability_2_rc=true}}] at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/personal/ability/2

# shift-right-click
execute if entity @s[advancements={main:triggers/settings/change_page={map_1_rc=true}}] if predicate main:flag/is_sneaking at @n[type=text_display,tag=setting.board] run function main:lobby/settings/board/page/map/0

# clean up
playsound minecraft:ui.button.click block @s
advancement revoke @s only main:triggers/settings/change_page
