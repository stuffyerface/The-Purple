scoreboard players operation .total infected = .infection_time settings
scoreboard players set .divide infected 15

scoreboard players operation .math infected = .total infected
scoreboard players operation .math infected /= .divide infected
scoreboard players operation .add infected = .math infected

scoreboard players operation .01 infected = .math infected
scoreboard players operation .math infected += .add infected
scoreboard players operation .02 infected = .math infected
scoreboard players operation .math infected += .add infected
scoreboard players operation .03 infected = .math infected
scoreboard players operation .math infected += .add infected
scoreboard players operation .04 infected = .math infected
scoreboard players operation .math infected += .add infected
scoreboard players operation .05 infected = .math infected
scoreboard players operation .math infected += .add infected
scoreboard players operation .06 infected = .math infected
scoreboard players operation .math infected += .add infected
scoreboard players operation .07 infected = .math infected
scoreboard players operation .math infected += .add infected
scoreboard players operation .08 infected = .math infected
scoreboard players operation .math infected += .add infected
scoreboard players operation .09 infected = .math infected
scoreboard players operation .math infected += .add infected
scoreboard players operation .10 infected = .math infected
scoreboard players operation .math infected += .add infected
scoreboard players operation .11 infected = .math infected
scoreboard players operation .math infected += .add infected
scoreboard players operation .12 infected = .math infected
scoreboard players operation .math infected += .add infected
scoreboard players operation .13 infected = .math infected
scoreboard players operation .math infected += .add infected
scoreboard players operation .14 infected = .math infected
scoreboard players operation .math infected += .add infected
scoreboard players operation .15 infected = .math infected
scoreboard players operation .math infected += .add infected
scoreboard players operation .total infected = .math infected
scoreboard players reset .math infected
