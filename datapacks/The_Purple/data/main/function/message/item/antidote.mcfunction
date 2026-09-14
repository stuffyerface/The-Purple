execute if entity @s[tag=infected] run tellraw @a[tag=player] [{"color":"gray","translate":"message.purple.item.antidote.chat","fallback":"%s was cured of their §5infection§r!","with":[{"selector":"@s"}]}]
execute if entity @s[tag=infected] run title @s actionbar [{"translate":"message.purple.item.antidote.cured","fallback":"You were cured by the antidote!","color":"green"}]
execute if entity @s[tag=!infected] run title @s actionbar [{"translate":"message.purple.item.antidote.wasted","fallback":"You had no infection to cure!","color":"green"}]
scoreboard players set @s actionbar 30
