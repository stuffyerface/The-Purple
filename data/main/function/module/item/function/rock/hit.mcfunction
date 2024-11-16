advancement revoke @s only main:triggers/items/rock_hit

# grant rock
function main:module/item/system/macro/give {id:THROWING_ROCK,slot:weapon.mainhand}

# clean
kill @n[tag=rock.arrow]
