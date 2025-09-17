# The Purple: @s -> @s
# %s: %s -> %s
title @a[tag=player] actionbar [{"color":"gray","translate":"message.purple.corrupted.source","fallback":"%3$s: %2$s -> %1$s","with":[{"selector":"@s"},{"selector":"@n[type=#main:player,tag=source]"},[{"color":"#AA00AA","text":"T"},{"color":"#B317AE","text":"h"},{"color":"#BD2DB2","text":"e "},{"color":"#C644B5","text":"P"},{"color":"#D05BB9","text":"u"},{"color":"#D971BD","text":"r"},{"color":"#E388C1","text":"p"},{"color":"#EC9FC4","text":"l"},{"color":"#FFCCCC","text":"e"}]]}]
scoreboard players set @a[tag=player] actionbar 20


#title @a[tag=player] actionbar [{"color":"gray","translate":"message.purple.corrupted.source","fallback":"%1$s was §5infected§r by %2$s and became %3$s!","with":[{"selector":"@s"},{"selector":"@n[type=#main:player,tag=source]"},[{"color":"#AA00AA","text":"T"},{"color":"#B317AE","text":"h"},{"color":"#BD2DB2","text":"e "},{"color":"#C644B5","text":"P"},{"color":"#D05BB9","text":"u"},{"color":"#D971BD","text":"r"},{"color":"#E388C1","text":"p"},{"color":"#EC9FC4","text":"l"},{"color":"#FFCCCC","text":"e"}]]}]
