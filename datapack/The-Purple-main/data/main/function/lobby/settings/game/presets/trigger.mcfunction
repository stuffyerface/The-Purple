execute unless entity @s[tag=within_setting_board_boundries] run return run advancement revoke @s only main:triggers/settings/game/presets
execute if score .game data matches 0.. if function main:message/settings/locked run return run advancement revoke @s only main:triggers/settings/game/presets

# switch
execute if entity @s[advancements={main:triggers/settings/game/presets={rc_presets_1=true}}] run function main:lobby/settings/game/presets/1/root
execute if entity @s[advancements={main:triggers/settings/game/presets={lc_presets_1=true}}] run function main:lobby/settings/game/presets/1/root
execute if entity @s[advancements={main:triggers/settings/game/presets={rc_presets_2=true}}] run function main:lobby/settings/game/presets/2/root
execute if entity @s[advancements={main:triggers/settings/game/presets={lc_presets_2=true}}] run function main:lobby/settings/game/presets/2/root
execute if entity @s[advancements={main:triggers/settings/game/presets={rc_presets_3=true}}] run function main:lobby/settings/game/presets/3/root
execute if entity @s[advancements={main:triggers/settings/game/presets={lc_presets_3=true}}] run function main:lobby/settings/game/presets/3/root
execute if entity @s[advancements={main:triggers/settings/game/presets={rc_presets_4=true}}] run function main:lobby/settings/game/presets/4/root
execute if entity @s[advancements={main:triggers/settings/game/presets={lc_presets_4=true}}] run function main:lobby/settings/game/presets/4/root
execute if entity @s[advancements={main:triggers/settings/game/presets={rc_presets_5=true}}] run function main:lobby/settings/game/presets/5/root
execute if entity @s[advancements={main:triggers/settings/game/presets={lc_presets_5=true}}] run function main:lobby/settings/game/presets/5/root
execute if entity @s[advancements={main:triggers/settings/game/presets={rc_presets_6=true}}] run function main:lobby/settings/game/presets/6/root
execute if entity @s[advancements={main:triggers/settings/game/presets={lc_presets_6=true}}] run function main:lobby/settings/game/presets/6/root

# clean up
playsound minecraft:ui.button.click block @s
advancement revoke @s only main:triggers/settings/game/presets
