execute unless entity @s[tag=within_setting_board_boundries] run return run advancement revoke @s only main:triggers/settings/game/item
execute if score .game data matches 0.. if function main:message/settings/locked run return run advancement revoke @s only main:triggers/settings/game/item

# detect item
execute if entity @s[advancements={main:triggers/settings/game/item={rc_SMALL_MUSHROOM=true}}] run function main:lobby/settings/game/item/detect {id:"SMALL_MUSHROOM"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_SMALL_MUSHROOM=true}}] run function main:lobby/settings/game/item/detect {id:"SMALL_MUSHROOM"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_INSTANT_CHORUS_FRUIT=true}}] run function main:lobby/settings/game/item/detect {id:"INSTANT_CHORUS_FRUIT"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_INSTANT_CHORUS_FRUIT=true}}] run function main:lobby/settings/game/item/detect {id:"INSTANT_CHORUS_FRUIT"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_ENDER_PEARL=true}}] run function main:lobby/settings/game/item/detect {id:"ENDER_PEARL"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_ENDER_PEARL=true}}] run function main:lobby/settings/game/item/detect {id:"ENDER_PEARL"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_GLOW_HORN=true}}] run function main:lobby/settings/game/item/detect {id:"GLOW_HORN"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_GLOW_HORN=true}}] run function main:lobby/settings/game/item/detect {id:"GLOW_HORN"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_TOTEM_OF_UNDYING=true}}] run function main:lobby/settings/game/item/detect {id:"TOTEM_OF_UNDYING"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_TOTEM_OF_UNDYING=true}}] run function main:lobby/settings/game/item/detect {id:"TOTEM_OF_UNDYING"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_TRIDENT=true}}] run function main:lobby/settings/game/item/detect {id:"TRIDENT"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_TRIDENT=true}}] run function main:lobby/settings/game/item/detect {id:"TRIDENT"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_SAFETY_VEST=true}}] run function main:lobby/settings/game/item/detect {id:"SAFETY_VEST"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_SAFETY_VEST=true}}] run function main:lobby/settings/game/item/detect {id:"SAFETY_VEST"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_PRISON_KEY=true}}] run function main:lobby/settings/game/item/detect {id:"PRISON_KEY"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_PRISON_KEY=true}}] run function main:lobby/settings/game/item/detect {id:"PRISON_KEY"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_COMPASS=true}}] run function main:lobby/settings/game/item/detect {id:"COMPASS"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_COMPASS=true}}] run function main:lobby/settings/game/item/detect {id:"COMPASS"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_FREEZE_TIME=true}}] run function main:lobby/settings/game/item/detect {id:"FREEZE_TIME"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_FREEZE_TIME=true}}] run function main:lobby/settings/game/item/detect {id:"FREEZE_TIME"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_SMOKE_BOMB=true}}] run function main:lobby/settings/game/item/detect {id:"SMOKE_BOMB"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_SMOKE_BOMB=true}}] run function main:lobby/settings/game/item/detect {id:"SMOKE_BOMB"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_ANTIDOTE=true}}] run function main:lobby/settings/game/item/detect {id:"ANTIDOTE"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_ANTIDOTE=true}}] run function main:lobby/settings/game/item/detect {id:"ANTIDOTE"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_WIND_CHARGE=true}}] run function main:lobby/settings/game/item/detect {id:"WIND_CHARGE"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_WIND_CHARGE=true}}] run function main:lobby/settings/game/item/detect {id:"WIND_CHARGE"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_REVIVAL_POTION=true}}] run function main:lobby/settings/game/item/detect {id:"REVIVAL_POTION"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_REVIVAL_POTION=true}}] run function main:lobby/settings/game/item/detect {id:"REVIVAL_POTION"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_DECOY=true}}] run function main:lobby/settings/game/item/detect {id:"DECOY"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_DECOY=true}}] run function main:lobby/settings/game/item/detect {id:"DECOY"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_GAME_ROCK=true}}] run function main:lobby/settings/game/item/detect {id:"GAME_ROCK"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_GAME_ROCK=true}}] run function main:lobby/settings/game/item/detect {id:"GAME_ROCK"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_KNOCKBACK_SLIMEBALL=true}}] run function main:lobby/settings/game/item/detect {id:"KNOCKBACK_SLIMEBALL"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_KNOCKBACK_SLIMEBALL=true}}] run function main:lobby/settings/game/item/detect {id:"KNOCKBACK_SLIMEBALL"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_DRACONIC_ESSENCE=true}}] run function main:lobby/settings/game/item/detect {id:"DRACONIC_ESSENCE"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_DRACONIC_ESSENCE=true}}] run function main:lobby/settings/game/item/detect {id:"DRACONIC_ESSENCE"}

# console log
tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"},{"text":" modified the random item pool."}]

# clean up
playsound minecraft:ui.button.click block @s
advancement revoke @s only main:triggers/settings/game/item
