scoreboard players add .world data 1

## ticking functions
function main:id/root
function main:game/tag/root

## ticking modules
execute unless score .disconnect disable matches 1 run function main:module/disconnect/root
execute unless score .footsteps disable matches 1 run function main:module/footsteps/root
execute unless score .quicksand disable matches 1 run function main:module/quicksand/root
execute unless score .meteor disable matches 1 run function main:module/meteor/root
execute unless score .item disable matches 1 run function main:module/item/system/root
execute unless score .corruption disable matches 1 run function main:module/corruption/root
execute unless score .scoreboard disable matches 1 run function main:module/scoreboard/root
execute unless score .spectator disable matches 1 run function main:module/spectator/root
execute unless score .sound disable matches 1 run function main:module/sound/root
execute unless score .source_ability disable matches 1 run function main:module/source/root
execute unless score .outside_map disable matches 1 run function main:module/outside_map/root
# .player_corruption disable

## setting board
execute at @e[tag=setting.board] run kill @e[type=#main:kill_at_setting_board,distance=..10]
execute at @e[tag=setting.board] positioned ~-4.5 ~-0.1 ~-0.505 as @a[dx=8,dy=4,dz=4,gamemode=!spectator,tag=!within_setting_board_boundries] run function main:lobby/settings/trigger
execute as @a[tag=within_setting_board_boundries] at @s run function main:lobby/settings/root
execute as @e[tag=setting_ephemeral,scores={age=1..}] run kill @s
scoreboard players add @e[type=text_display,tag=setting_ephemeral] age 1

## slow tick
scoreboard players add .slow_tick dummy 1
execute if score .slow_tick dummy matches 10.. run scoreboard players set .slow_tick dummy 0

## miscellaneous

# player
execute as @a[nbt=!{foodSaturationLevel:20.0f}] run effect give @s minecraft:saturation 1 100 true
execute as @a[nbt=!{Health:20.0f}] run effect give @s minecraft:instant_health 1 100 true
execute as @a at @s if entity @s[y=-70,dy=-100] run function c:tp/current_location

execute as @a[scores={cooldown.furniture.contributor_display.stuffy=0..}] run scoreboard players remove @s cooldown.furniture.contributor_display.stuffy 1
execute as @a[scores={cooldown.furniture.contributor_display.nightlibra=0..}] run scoreboard players remove @s cooldown.furniture.contributor_display.nightlibra 1
execute as @a[scores={cooldown.furniture.use_elevator=0..}] run scoreboard players remove @s cooldown.furniture.use_elevator 1
execute as @a[scores={actionbar=0..}] run scoreboard players remove @s actionbar 1
execute as @a[scores={return_to_lobby_confirm=0..}] run scoreboard players remove @s return_to_lobby_confirm 1
execute as @a[scores={spectate_confirm=0..}] run scoreboard players remove @s spectate_confirm 1
execute as @a[scores={return=-2147483647..}] run function main:game/tag/function/player_return
execute as @a[scores={teleport_lock=0..}] at @s run function main:module/cosmetic/teleport
execute if entity @a[scores={preview=0..},gamemode=spectator] run function main:lobby/settings/preview/root
execute if score .slow_tick dummy matches 0 as @a[tag=!player] unless predicate main:has_item/ready unless predicate main:has_item/not_ready unless predicate main:has_item/spectate_game run function main:module/inventory/trigger 
execute if score .slow_tick dummy matches 0 as @e[tag=clone] at @s on target if function main:module/miscellaneous/if/infected_or_corrupted as @n[tag=clone] run damage @s 0 minecraft:generic_kill by @p[tag=player,tag=!corrupted,tag=!source,gamemode=!spectator]

# entities
execute as @e[type=trident,nbt={inGround:1b}] run kill @s
execute as @e[type=spectral_arrow,nbt={inGround:1b}] at @s run function main:module/miscellaneous/tick/summon_rock_item
execute as @e[tag=rock.thrown.display] unless predicate main:flag/is_riding run kill @s
execute as @e[tag=item.display.gravity,nbt={OnGround:1b}] run kill @s

execute if entity @e[tag=infected] run function main:module/cosmetic/infected_particle
execute as @e[tag=corrupt_block] unless score .corruption_despawn_time settings matches -1 run scoreboard players add @s age 1
execute as @e[tag=corrupt_block] if score @s age >= .corruption_despawn_time settings run kill @s

execute as @e[tag=clone] run scoreboard players add @s age 1
execute as @e[tag=clone,scores={age=250..}] run kill @s

# items
execute as @e[type=item] if data entity @s Thrower run function main:module/inventory/function/return_thrown_item
execute as @e[type=item,nbt={OnGround:1b}] run scoreboard players add @s age 1
execute as @e[type=item,scores={age=100..}] run kill @s

execute as @e[tag=prison_block_marker] run scoreboard players add @s age 1
execute as @e[tag=prison_block_marker,limit=1] if score @s age matches 50.. at @s run playsound minecraft:block.vault.insert_item block @a[distance=..30] ~ ~ ~ 1 1
execute as @e[tag=prison_block_marker] if score @s age matches 50.. at @s run setblock ~ ~ ~ air strict
execute as @e[tag=prison_block_marker.water] if score @s age matches 50.. at @s run setblock ~ ~ ~ water strict
execute as @e[tag=prison_block_marker] if score @s age matches 50.. at @s run kill @s

execute as @a[scores={item.compass=1..}] run scoreboard players remove @s item.compass 1
execute as @a[scores={item.compass=..0}] run scoreboard players reset @s item.compass

execute as @a[scores={item.lobby_ability_preview=1..}] run scoreboard players remove @s item.lobby_ability_preview 1
execute as @a[scores={item.lobby_ability_preview=..0}] run scoreboard players reset @s item.lobby_ability_preview

execute as @a[scores={item.small_mushroom=0..}] run scoreboard players remove @s item.small_mushroom 1
execute as @a[scores={item.small_mushroom=..0}] at @s run function main:module/item/function/small_mushroom_reset

execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_effects:[{id:"minecraft:invisibility",amplifier:50b}]}}] at @s run function main:module/item/function/smoke_bomb

execute as @e[tag=spectator_ability_slime] run scoreboard players add @s age 1
execute as @e[tag=spectator_ability_slime,scores={age=200..}] run kill @s
execute as @e[type=slime,nbt={Size:0}] run tp ~ ~-64 ~

execute as @a[nbt={active_effects:[{id:"minecraft:regeneration",amplifier:-1b}]}] if entity @s[tag=corrupted] unless score .game data matches 3 run function main:game/tag/function/player_revive
execute as @a[nbt={active_effects:[{id:"minecraft:regeneration",amplifier:-1b}]}] run effect clear @s regeneration

# lobby
execute at @n[tag=block.beacon.source] run playsound minecraft:block.beacon.ambient block @a[distance=..15] ~ ~ ~ 1 0
execute at @n[tag=block.beacon.source] run particle minecraft:flash ~ 256 ~ 0.5 0.5 0.5 0 1 force
execute as @e[tag=block.beacon.source] at @s run rotate @s ~90 ~
execute as @e[tag=block.beacon.ring_1] at @s run rotate @s ~3 ~
execute as @e[tag=block.beacon.ring_2] at @s run rotate @s ~-6 ~
execute at @e[tag=block.sniffer_egg] unless block ~ ~ ~ sniffer_egg[hatch=0] run setblock ~ ~ ~ minecraft:sniffer_egg[hatch=0]
execute at @e[tag=block.decorated_pot] unless block ~ ~ ~ decorated_pot run setblock ~ ~ ~ decorated_pot{item:{count: 1, id:"minecraft:brick"}}
execute as @e[type=tropical_fish,tag=furniture.lost_artifact.ugly_fish] at @s rotated as @s on passengers run rotate @s ~-140 ~
kill @e[type=item,nbt={Item:{id:"minecraft:bamboo_raft"}},nbt=!{Item:{components:{"minecraft:custom_data":{id:SUNKEN_RAFT}}}}]
execute if score .slow_tick dummy matches 0 positioned 3 14 -22 if predicate main:block/has_blacklisted_items run function main:module/miscellaneous/tick/empty_barrel

execute in minecraft:overworld positioned -10 0 10 as @a[distance=..200] at @s unless block ~ -40 ~ green_terracotta run function main:lobby/border/warning
execute in minecraft:overworld positioned -10 0 10 as @a[distance=..200] at @s if block ~ -41 ~ tinted_glass run function main:lobby/border/edge
execute as @a[scores={lobby.border=-1..}] at @s unless block ~ -40 ~ minecraft:yellow_terracotta unless block ~ -40 ~ minecraft:bedrock run function main:lobby/border/reset

execute if score .chat.check_ready data matches 1.. run scoreboard players remove .chat.check_ready data 1
execute if score .chat.check_ready data matches ..0 run scoreboard players reset .chat.check_ready data
execute as @a[scores={cooldown.item.ready=1..}] run scoreboard players remove @s cooldown.item.ready 1
execute as @a[scores={cooldown.item.ready=..0}] run scoreboard players reset @s cooldown.item.ready
execute as @a[scores={cooldown.item.not_ready=1..}] run scoreboard players remove @s cooldown.item.not_ready 1
execute as @a[scores={cooldown.item.not_ready=..0}] run scoreboard players reset @s cooldown.item.not_ready

execute unless score .total_artifacts data matches 9.. as @e[tag=furniture.lost_artifact,type=interaction] at @s if entity @p[gamemode=!spectator,distance=..5] run function main:module/miscellaneous/tick/lost_artifact
execute unless score .total_artifacts data matches 9.. as @e[tag=furniture.lost_artifact,nbt={Glowing:1b}] at @s unless entity @p[gamemode=!spectator,distance=..5] run data merge entity @s {Glowing:0b}

execute if score .contributor_display_cooldown dummy matches 1.. run scoreboard players remove .contributor_display_cooldown dummy 1
execute if score .contributor_display data matches 1.. at @n[type=interaction,tag=contributor] unless entity @p[distance=..8] run function c:build/contributor_display/credit/preview

# artifact anti-softlock
execute if score artifact.frying_pan data matches 1 unless entity @n[tag=furniture.artifact.frying_pan] unless entity @a[tag=artifact.frying_pan] as @e[type=interaction,limit=1,sort=random,tag=lobby.artifact_display,tag=empty] at @s positioned ~ ~1 ~ run function main:lobby/furniture/artifact_display/lobby_frying_pan
execute if score artifact.microscope data matches 1 unless entity @n[tag=furniture.artifact.microscope] unless entity @a[tag=artifact.microscope] as @e[type=interaction,limit=1,sort=random,tag=lobby.artifact_display,tag=empty] at @s positioned ~ ~1 ~ run function main:lobby/furniture/artifact_display/lobby_microscope
execute if score artifact.ugly_fish data matches 1 unless entity @n[tag=furniture.artifact.ugly_fish] unless entity @a[tag=artifact.ugly_fish] as @e[type=interaction,limit=1,sort=random,tag=lobby.artifact_display,tag=empty] at @s positioned ~ ~1 ~ run function main:lobby/furniture/artifact_display/lobby_ugly_fish
execute if score artifact.drill data matches 1 unless entity @n[tag=furniture.artifact.drill] unless entity @a[tag=artifact.drill] as @e[type=interaction,limit=1,sort=random,tag=lobby.artifact_display,tag=empty] at @s positioned ~ ~1 ~ run function main:lobby/furniture/artifact_display/map_drill
execute if score artifact.gears data matches 1 unless entity @n[tag=furniture.artifact.gears] unless entity @a[tag=artifact.gears] as @e[type=interaction,limit=1,sort=random,tag=lobby.artifact_display,tag=empty] at @s positioned ~ ~1 ~ run function main:lobby/furniture/artifact_display/map_gears
execute if score artifact.lantern data matches 1 unless entity @n[tag=furniture.artifact.lantern] unless entity @a[tag=artifact.lantern] as @e[type=interaction,limit=1,sort=random,tag=lobby.artifact_display,tag=empty] at @s positioned ~ ~1 ~ run function main:lobby/furniture/artifact_display/map_lantern
execute if score artifact.meteorite data matches 1 unless entity @n[tag=furniture.artifact.meteorite] unless entity @a[tag=artifact.meteorite] as @e[type=interaction,limit=1,sort=random,tag=lobby.artifact_display,tag=empty] at @s positioned ~ ~1 ~ run function main:lobby/furniture/artifact_display/map_meteorite
execute if score artifact.potted_plant data matches 1 unless entity @n[tag=furniture.artifact.potted_plant] unless entity @a[tag=artifact.potted_plant] as @e[type=interaction,limit=1,sort=random,tag=lobby.artifact_display,tag=empty] at @s positioned ~ ~1 ~ run function main:lobby/furniture/artifact_display/map_potted_plant
execute if score artifact.rope data matches 1 unless entity @n[tag=furniture.artifact.rope] unless entity @a[tag=artifact.rope] as @e[type=interaction,limit=1,sort=random,tag=lobby.artifact_display,tag=empty] at @s positioned ~ ~1 ~ run function main:lobby/furniture/artifact_display/map_rope
execute if score artifact.test data matches 1 unless entity @n[tag=furniture.artifact.test] unless entity @a[tag=artifact.test] as @e[type=interaction,limit=1,sort=random,tag=lobby.artifact_display,tag=empty] at @s positioned ~ ~1 ~ run function main:lobby/furniture/artifact_display/test

# maps
execute if score .elevator_y dummy matches 1500.. at @n[tag=elevator.base] positioned ~-4 ~-1 ~-4 unless entity @a[dx=5.5,dz=5.5,dy=7,tag=!corrupted,gamemode=!spectator] run function main:module/elevator/loop
execute if score .elevator_cooldown dummy matches 1.. run scoreboard players remove .elevator_cooldown dummy 1

#------------------------------------------------------------------------------------------------------------------------------------------------
## quick reference documentation
#
# gamedata doc
# -1 = inactive
#  0 = pregame
#  1 = active
#  2 = between rounds
#  3 = end
#
