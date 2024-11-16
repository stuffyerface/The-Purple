title @s times 0 20 0
function main:message/game/corruption/infecting

execute if score @s infected < .01 infected run title @s title [{"text":"","underlined":true},{"text":"               ","color":"gray"}]
execute if score @s infected = .01 infected run title @s title [{"text":"","underlined":true},{"text":" ","color":"dark_purple"},{"text":"              ","color":"gray"}]
execute if score @s infected = .02 infected run title @s title [{"text":"","underlined":true},{"text":"  ","color":"dark_purple"},{"text":"             ","color":"gray"}]
execute if score @s infected = .03 infected run title @s title [{"text":"","underlined":true},{"text":"   ","color":"dark_purple"},{"text":"            ","color":"gray"}]
execute if score @s infected = .04 infected run title @s title [{"text":"","underlined":true},{"text":"    ","color":"dark_purple"},{"text":"           ","color":"gray"}]
execute if score @s infected = .05 infected run title @s title [{"text":"","underlined":true},{"text":"     ","color":"dark_purple"},{"text":"          ","color":"gray"}]
execute if score @s infected = .06 infected run title @s title [{"text":"","underlined":true},{"text":"      ","color":"dark_purple"},{"text":"         ","color":"gray"}]
execute if score @s infected = .07 infected run title @s title [{"text":"","underlined":true},{"text":"       ","color":"dark_purple"},{"text":"        ","color":"gray"}]
execute if score @s infected = .08 infected run title @s title [{"text":"","underlined":true},{"text":"        ","color":"dark_purple"},{"text":"       ","color":"gray"}]
execute if score @s infected = .09 infected run title @s title [{"text":"","underlined":true},{"text":"         ","color":"dark_purple"},{"text":"      ","color":"gray"}]
execute if score @s infected = .10 infected run title @s title [{"text":"","underlined":true},{"text":"          ","color":"dark_purple"},{"text":"     ","color":"gray"}]
execute if score @s infected = .11 infected run title @s title [{"text":"","underlined":true},{"text":"           ","color":"dark_purple"},{"text":"    ","color":"gray"}]
execute if score @s infected = .12 infected run title @s title [{"text":"","underlined":true},{"text":"            ","color":"dark_purple"},{"text":"   ","color":"gray"}]
execute if score @s infected = .13 infected run title @s title [{"text":"","underlined":true},{"text":"             ","color":"dark_purple"},{"text":"  ","color":"gray"}]
execute if score @s infected = .14 infected run title @s title [{"text":"","underlined":true},{"text":"              ","color":"dark_purple"},{"text":" ","color":"gray"}]
execute if score @s infected = .15 infected run title @s title [{"text":"","underlined":true},{"text":"               ","color":"dark_purple"},{"text":"","color":"gray"}]

execute if score @s infected = .01 infected run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 0.13
execute if score @s infected = .02 infected run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 0.26
execute if score @s infected = .03 infected run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 0.39
execute if score @s infected = .04 infected run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 0.52
execute if score @s infected = .05 infected run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 0.65
execute if score @s infected = .06 infected run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 0.78
execute if score @s infected = .07 infected run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 0.91
execute if score @s infected = .08 infected run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 1.04
execute if score @s infected = .09 infected run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 1.17
execute if score @s infected = .10 infected run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 1.30
execute if score @s infected = .11 infected run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 1.43
execute if score @s infected = .12 infected run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 1.56
execute if score @s infected = .13 infected run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 1.69
execute if score @s infected = .14 infected run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 1.82
execute if score @s infected = .15 infected run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 1.95

execute if score @s infected >= .15 infected run return run function main:module/corruption/corrupt
execute if score @s infected >= .01 infected align xyz positioned ~ ~-0.1 ~ unless entity @n[tag=corrupt_block,dx=0] run function main:message/game/corruption/safe
