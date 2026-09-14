execute store result score .contributor_animation dummy run random value 1..4

execute if score .contributor_animation dummy matches 1 run function main:module/cosmetic/animation/contributor_display/firework
execute if score .contributor_animation dummy matches 2 run function main:module/cosmetic/animation/contributor_display/pop
execute if score .contributor_animation dummy matches 3 run function main:module/cosmetic/animation/contributor_display/grow
execute if score .contributor_animation dummy matches 4 run function main:module/cosmetic/animation/contributor_display/mannequin
