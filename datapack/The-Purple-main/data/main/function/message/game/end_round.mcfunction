bossbar set main:time name [{"color":"green","translate":"message.purple.game.end_round.bossbar","fallback":"Round %s has ended!","with":[[{"text":"#","color":"yellow"},{"score":{"objective":"data","name":".round"}}]]}]
execute as @a[tag=player,tag=!infected,tag=!corrupted,gamemode=!spectator] at @s run title @s actionbar [{"color":"green","translate":"message.purple.game.end_round.actionbar","fallback":"You Survived Round %s!","with":[[{"text":"#","color":"yellow"},{"score":{"objective":"data","name":".round"}}]]}]
execute as @a[tag=player,tag=!infected,tag=!corrupted,gamemode=!spectator] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
execute as @a[tag=player,tag=!infected,tag=!corrupted,gamemode=!spectator] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.8
execute as @a[tag=player,tag=!infected,tag=!corrupted,gamemode=!spectator] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5
