# switch
execute if entity @s[advancements={main:triggers/lobby/lost_artifact={lc_test=true}}] run function main:lobby/furniture/lost_artifact/test
execute if entity @s[advancements={main:triggers/lobby/lost_artifact={rc_test=true}}] run function main:lobby/furniture/lost_artifact/test
execute if entity @s[advancements={main:triggers/lobby/lost_artifact={lc_frying_pan=true}}] run function main:lobby/furniture/lost_artifact/lobby_frying_pan
execute if entity @s[advancements={main:triggers/lobby/lost_artifact={rc_frying_pan=true}}] run function main:lobby/furniture/lost_artifact/lobby_frying_pan
execute if entity @s[advancements={main:triggers/lobby/lost_artifact={lc_microscope=true}}] run function main:lobby/furniture/lost_artifact/lobby_microscope
execute if entity @s[advancements={main:triggers/lobby/lost_artifact={rc_microscope=true}}] run function main:lobby/furniture/lost_artifact/lobby_microscope
execute if entity @s[advancements={main:triggers/lobby/lost_artifact={lc_ugly_fish=true}}] run function main:lobby/furniture/lost_artifact/lobby_ugly_fish
execute if entity @s[advancements={main:triggers/lobby/lost_artifact={rc_ugly_fish=true}}] run function main:lobby/furniture/lost_artifact/lobby_ugly_fish
execute if entity @s[advancements={main:triggers/lobby/lost_artifact={lc_potted_plant=true}}] run function main:lobby/furniture/lost_artifact/map_potted_plant
execute if entity @s[advancements={main:triggers/lobby/lost_artifact={rc_potted_plant=true}}] run function main:lobby/furniture/lost_artifact/map_potted_plant
execute if entity @s[advancements={main:triggers/lobby/lost_artifact={lc_rope=true}}] run function main:lobby/furniture/lost_artifact/map_rope
execute if entity @s[advancements={main:triggers/lobby/lost_artifact={rc_rope=true}}] run function main:lobby/furniture/lost_artifact/map_rope
execute if entity @s[advancements={main:triggers/lobby/lost_artifact={lc_drill=true}}] run function main:lobby/furniture/lost_artifact/map_drill
execute if entity @s[advancements={main:triggers/lobby/lost_artifact={rc_drill=true}}] run function main:lobby/furniture/lost_artifact/map_drill
execute if entity @s[advancements={main:triggers/lobby/lost_artifact={lc_gears=true}}] run function main:lobby/furniture/lost_artifact/map_gears
execute if entity @s[advancements={main:triggers/lobby/lost_artifact={rc_gears=true}}] run function main:lobby/furniture/lost_artifact/map_gears
execute if entity @s[advancements={main:triggers/lobby/lost_artifact={lc_meteorite=true}}] run function main:lobby/furniture/lost_artifact/map_meteorite
execute if entity @s[advancements={main:triggers/lobby/lost_artifact={rc_meteorite=true}}] run function main:lobby/furniture/lost_artifact/map_meteorite
execute if entity @s[advancements={main:triggers/lobby/lost_artifact={lc_lantern=true}}] run function main:lobby/furniture/lost_artifact/map_lantern
execute if entity @s[advancements={main:triggers/lobby/lost_artifact={rc_lantern=true}}] run function main:lobby/furniture/lost_artifact/map_lantern

# cleanup
advancement revoke @s only main:triggers/lobby/lost_artifact
