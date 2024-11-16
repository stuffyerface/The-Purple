# switch
execute unless score @s cooldown.furniture.contributor_display.stuffy matches 0.. if entity @s[advancements={main:triggers/lobby/contributor_display={lc_stuffy=true}}] run function main:lobby/furniture/contributor_display/stuffy
execute unless score @s cooldown.furniture.contributor_display.stuffy matches 0.. if entity @s[advancements={main:triggers/lobby/contributor_display={rc_stuffy=true}}] run function main:lobby/furniture/contributor_display/stuffy
execute unless score @s cooldown.furniture.contributor_display.nightlibra matches 0.. if entity @s[advancements={main:triggers/lobby/contributor_display={lc_nightlibra=true}}] run function main:lobby/furniture/contributor_display/nightlibra
execute unless score @s cooldown.furniture.contributor_display.nightlibra matches 0.. if entity @s[advancements={main:triggers/lobby/contributor_display={rc_nightlibra=true}}] run function main:lobby/furniture/contributor_display/nightlibra
advancement revoke @s only main:triggers/lobby/contributor_display
