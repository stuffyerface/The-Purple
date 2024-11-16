scoreboard players set .100 dummy 100
scoreboard players operation .og_time dummy = .time data
scoreboard players operation .calc_percent dummy = .reduce_timer settings
scoreboard players operation .calc_percent dummy *= .round data
scoreboard players operation .calc_time dummy = .calc_percent dummy
scoreboard players operation .calc_time dummy *= .time data
scoreboard players operation .calc_time dummy /= .100 dummy
scoreboard players operation .time data -= .calc_time dummy

execute if score .time data matches ..10 run scoreboard players set .time data 10
execute if score .time data matches ..10 run scoreboard players operation .calc_time dummy = .og_time dummy
execute if score .time data matches ..10 run scoreboard players operation .calc_time dummy -= .time data
execute if score .time data matches ..10 run scoreboard players operation .calc_percent dummy = .calc_time dummy
execute if score .time data matches ..10 run scoreboard players operation .calc_percent dummy *= .100 dummy
execute if score .time data matches ..10 run scoreboard players operation .calc_percent dummy /= .og_time dummy
execute store result bossbar main:time max run scoreboard players get .time data

tellraw @a[tag=player] [{"color":"gray","translate":"message.purple.reduce_timer","fallback":"%3$s Time was reduced by %s for round %s!","with":[[{"score":{"objective":"dummy","name":".calc_time"},"color":"yellow"},{"translate":"setting.purple.button.seconds","fallback":"s"}],[{"text":"#","color":"yellow"},{"score":{"objective":"data","name":".round"}}],{"translate":"icon.purple.hourglass","fallback":"⌛","font":"purple:icon","color":"white"}],"hoverEvent":{"action":"show_text","value":[{"color":"green","translate":"message.purple.reduce_timer.hover","fallback":"From %s to %s, thats %s!","with":[[{"score":{"objective":"dummy","name":".og_time"},"color":"yellow"},{"translate":"setting.purple.button.seconds","fallback":"s"}],[{"score":{"objective":"data","name":".time"},"color":"yellow"},{"translate":"setting.purple.button.seconds","fallback":"s"}],[{"score":{"objective":"dummy","name":".calc_percent"},"color":"yellow"},{"text":"%"}]]}]}}]
scoreboard players reset .100 dummy
scoreboard players reset .og_time dummy
scoreboard players reset .calc_time dummy
scoreboard players reset .calc_percent dummy

# %3$s Time was reduced by %s for round %s!
# [{"score":{"objective":"dummy","name":".calc_time"},"color":"yellow"},{"translate":"setting.purple.button.seconds","fallback":"s"}]
# [{"text":"#","color":"yellow"},{"score":{"objective":"data","name":".round"}}]
# {"translate":"icon.purple.hourglass","fallback":"⌛","font":"purple:icon","color":"white"}

# From %s to %s, thats %s!
# [{"score":{"objective":"dummy","name":".og_time"},"color":"yellow"},{"translate":"setting.purple.button.seconds","fallback":"s"}]
# [{"score":{"objective":"data","name":".time"},"color":"yellow"},{"translate":"setting.purple.button.seconds","fallback":"s"}]
# [{"score":{"objective":"dummy","name":".calc_percent"},"color":"yellow"},{"text":"%"}]
