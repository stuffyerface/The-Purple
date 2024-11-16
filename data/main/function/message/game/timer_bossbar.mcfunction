# ⌛ Time Remaining: ???
# ⌛ Time Remaining: 0s (+0s) (🧊 0s)
# ⌛ Time Remaining: 0s (+0s)
# ⌛ Time Remaining: 0s (🧊 0s)
# ⌛ Time Remaining: 0s

# disabled timer
execute if score .round_timer settings matches 0 run return run bossbar set main:time name {"color":"green","translate":"message.purple.game.actionbar.time_remaining","fallback":"%2$s Time Remaining: %s","with":[[{"translate":"message.purple.game.actionbar.time_remaining.unknown","fallback":"???","color":"red"}],{"translate":"icon.purple.hourglass","fallback":"⌛","font":"purple:icon","color":"white"}]}

# increase_timer setting + freeze_timer item
execute if score .time_added dummy matches 0.. run scoreboard players add .time_added_timer dummy 1
execute if score .time_added_timer dummy matches 70 run scoreboard players reset .time_added dummy
execute if score .time_added_timer dummy matches 70 run scoreboard players reset .time_added_timer dummy
execute if score .time_added dummy matches 0.. if score .freeze_time data matches 1.. run return run bossbar set main:time name [{"color":"green","translate":"message.purple.game.actionbar.time_remaining","fallback":"%2$s Time Remaining: %s","with":[[{"score":{"name":".time","objective":"data"},"color":"yellow"},{"translate":"setting.purple.button.seconds","fallback":"s"}],{"translate":"icon.purple.hourglass","fallback":"⌛","font":"purple:icon","color":"white"}]}," ",{"color":"gray","translate":"message.purple.game.actionbar.time_added","fallback":"(%s)","with":[[{"text":"+","color":"dark_gray"},{"score":{"name":".time_added","objective":"dummy"},"color":"yellow"},{"translate":"setting.purple.button.seconds","fallback":"s","color":"yellow"}]]}," ",{"color":"gray","translate":"message.purple.game.actionbar.time_frozen","fallback":"(%2$s %s)","with":[[{"score":{"name":".freeze_time","objective":"data"},"color":"#DBF1FD"},{"translate":"setting.purple.button.seconds","fallback":"s"}],{"translate":"icon.purple.ice","fallback":"🧊","font":"purple:icon","color":"white","color":"#DBF1FD"}]}]

# increase_timer setting
execute if score .time_added dummy matches 0.. run return run bossbar set main:time name [{"color":"green","translate":"message.purple.game.actionbar.time_remaining","fallback":"%2$s Time Remaining: %s","with":[[{"score":{"name":".time","objective":"data"},"color":"yellow"},{"translate":"setting.purple.button.seconds","fallback":"s"}],{"translate":"icon.purple.hourglass","fallback":"⌛","font":"purple:icon","color":"white"}]}," ",{"color":"gray","translate":"message.purple.game.actionbar.time_added","fallback":"(%s)","with":[[{"text":"+","color":"dark_gray"},{"score":{"name":".time_added","objective":"dummy"},"color":"yellow"},{"translate":"setting.purple.button.seconds","fallback":"s","color":"yellow"}]]}]

# freeze_timer item
execute if score .freeze_time data matches 1.. run return run bossbar set main:time name [{"color":"green","translate":"message.purple.game.actionbar.time_remaining","fallback":"%2$s Time Remaining: %s","with":[[{"score":{"name":".time","objective":"data"},"color":"yellow"},{"translate":"setting.purple.button.seconds","fallback":"s"}],{"translate":"icon.purple.hourglass","fallback":"⌛","font":"purple:icon","color":"white"}]}," ",{"color":"gray","translate":"message.purple.game.actionbar.time_frozen","fallback":"(%2$s %s)","with":[[{"score":{"name":".freeze_time","objective":"data"},"color":"#DBF1FD"},{"translate":"setting.purple.button.seconds","fallback":"s"}],{"translate":"icon.purple.ice","fallback":"🧊","font":"purple:icon","color":"white","color":"#DBF1FD"}]}]

# default timer
bossbar set main:time name {"color":"green","translate":"message.purple.game.actionbar.time_remaining","fallback":"%2$s Time Remaining: %s","with":[[{"score":{"name":".time","objective":"data"},"color":"yellow"},{"translate":"setting.purple.button.seconds","fallback":"s"}],{"translate":"icon.purple.hourglass","fallback":"⌛","font":"purple:icon","color":"white"}]}
