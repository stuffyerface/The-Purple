execute unless entity @s[tag=within_setting_board_boundries] run return run advancement revoke @s only main:triggers/settings/game/item
execute if score .game data matches 0.. if function main:message/settings/locked run return run advancement revoke @s only main:triggers/settings/game/item

# detect item
execute if entity @s[advancements={main:triggers/settings/game/item={rc_SMALL_MUSHROOM=true}}] run function main:lobby/settings/game/item/detect {id:"SMALL_MUSHROOM",rarity:"common"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_SMALL_MUSHROOM=true}}] run function main:lobby/settings/game/item/detect {id:"SMALL_MUSHROOM",rarity:"common"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_CHORUS_FRUIT=true}}] run function main:lobby/settings/game/item/detect {id:"CHORUS_FRUIT",rarity:"common"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_CHORUS_FRUIT=true}}] run function main:lobby/settings/game/item/detect {id:"CHORUS_FRUIT",rarity:"common"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_ENDER_PEARL=true}}] run function main:lobby/settings/game/item/detect {id:"ENDER_PEARL",rarity:"common"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_ENDER_PEARL=true}}] run function main:lobby/settings/game/item/detect {id:"ENDER_PEARL",rarity:"common"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_GLOW_HORN=true}}] run function main:lobby/settings/game/item/detect {id:"GLOW_HORN",rarity:"common"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_GLOW_HORN=true}}] run function main:lobby/settings/game/item/detect {id:"GLOW_HORN",rarity:"common"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_TOTEM_OF_UNDYING=true}}] run function main:lobby/settings/game/item/detect {id:"TOTEM_OF_UNDYING",rarity:"common"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_TOTEM_OF_UNDYING=true}}] run function main:lobby/settings/game/item/detect {id:"TOTEM_OF_UNDYING",rarity:"common"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_TRIDENT=true}}] run function main:lobby/settings/game/item/detect {id:"TRIDENT",rarity:"common"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_TRIDENT=true}}] run function main:lobby/settings/game/item/detect {id:"TRIDENT",rarity:"common"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_SAFETY_VEST=true}}] run function main:lobby/settings/game/item/detect {id:"SAFETY_VEST",rarity:"common"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_SAFETY_VEST=true}}] run function main:lobby/settings/game/item/detect {id:"SAFETY_VEST",rarity:"common"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_PRISON_KEY=true}}] run function main:lobby/settings/game/item/detect {id:"PRISON_KEY",rarity:"common"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_PRISON_KEY=true}}] run function main:lobby/settings/game/item/detect {id:"PRISON_KEY",rarity:"common"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_COMPASS=true}}] run function main:lobby/settings/game/item/detect {id:"COMPASS",rarity:"common"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_COMPASS=true}}] run function main:lobby/settings/game/item/detect {id:"COMPASS",rarity:"common"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_FREEZE_TIME=true}}] run function main:lobby/settings/game/item/detect {id:"FREEZE_TIME",rarity:"common"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_FREEZE_TIME=true}}] run function main:lobby/settings/game/item/detect {id:"FREEZE_TIME",rarity:"common"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_SMOKE_BOMB=true}}] run function main:lobby/settings/game/item/detect {id:"SMOKE_BOMB",rarity:"common"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_SMOKE_BOMB=true}}] run function main:lobby/settings/game/item/detect {id:"SMOKE_BOMB",rarity:"common"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_ANTIDOTE=true}}] run function main:lobby/settings/game/item/detect {id:"ANTIDOTE",rarity:"common"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_ANTIDOTE=true}}] run function main:lobby/settings/game/item/detect {id:"ANTIDOTE",rarity:"common"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_WIND_CHARGE=true}}] run function main:lobby/settings/game/item/detect {id:"WIND_CHARGE",rarity:"common"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_WIND_CHARGE=true}}] run function main:lobby/settings/game/item/detect {id:"WIND_CHARGE",rarity:"common"}
execute if entity @s[advancements={main:triggers/settings/game/item={rc_REVIVAL_POTION=true}}] run function main:lobby/settings/game/item/detect {id:"REVIVAL_POTION",rarity:"common"}
execute if entity @s[advancements={main:triggers/settings/game/item={lc_REVIVAL_POTION=true}}] run function main:lobby/settings/game/item/detect {id:"REVIVAL_POTION",rarity:"common"}

# console log
tellraw @a[tag=debug] ["[Console] ",{"selector":"@s"},{"text":" modified the random item pool."}]

# clean up
playsound minecraft:ui.button.click block @s
advancement revoke @s only main:triggers/settings/game/item
