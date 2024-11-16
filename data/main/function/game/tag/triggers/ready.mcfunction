execute unless score .game data matches ..0 run function main:message/game/ready_late
execute unless score .game data matches ..0 run return run advancement revoke @s only main:triggers/game/ready
execute if entity @s[advancements={main:triggers/game/ready={ready=true}},tag=ready] run return run advancement revoke @s only main:triggers/game/ready
execute if entity @s[advancements={main:triggers/game/ready={cancel=true}},tag=!ready] run return run advancement revoke @s only main:triggers/game/ready
execute if entity @s[advancements={main:triggers/game/ready={ready=true}}] run tag @s add ready
execute if entity @s[advancements={main:triggers/game/ready={cancel=true}}] run tag @s remove ready
advancement revoke @s only main:triggers/game/ready

# replace item
execute if entity @s[tag=ready] run function c:item/not_ready
execute if entity @s[tag=!ready] run function c:item/ready

# calculate players ready percent
function main:game/tag/function/check_required
execute if score .ready data >= .required data unless score .start_countdown data matches 0.. run scoreboard players set .start_countdown data 50
execute unless score .ready data >= .required data if score .start_countdown data matches 0.. run scoreboard players reset .start_countdown data

# cosmetic
function main:id/team/set_color
function main:message/game/ready
playsound minecraft:block.note_block.bell master @s[tag=ready] ~ ~ ~ 1 1
playsound minecraft:block.note_block.bell master @s[tag=!ready] ~ ~ ~ 1 0

# last to ready up chat message
scoreboard players operation .check_ready dummy = .required data
scoreboard players remove .check_ready dummy 1
execute if score .check_ready dummy = .ready data unless score .chat.check_ready data matches 1.. run tellraw @a[tag=!ready] {"translate":"message.purple.everyone_else_is_ready","fallback":"Hey! Everyone else is ready! Ready-up to start the game!","color":"green"}
execute if score .check_ready dummy = .ready data unless score .chat.check_ready data matches 1.. run scoreboard players set .chat.check_ready data 400
scoreboard players reset .check_ready dummy

# join late
execute if entity @s[tag=ready] if score .pregame data matches 1.. run clear @s
execute if entity @s[tag=ready] if score .pregame data matches 1.. run function c:tp/current_location
