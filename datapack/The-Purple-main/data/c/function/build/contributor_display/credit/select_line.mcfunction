scoreboard players add .contributor_display data 1
execute if score .contributor_display data matches 12.. run scoreboard players set .contributor_display data 1

# select
execute if score .contributor_display data matches 1 run function c:build/contributor_display/credit/name/raster {line:'bottom'}
execute if score .contributor_display data matches 2 run function c:build/contributor_display/credit/name/blockym {line:'bottom'}
execute if score .contributor_display data matches 3 run function c:build/contributor_display/credit/name/evtema3 {line:'bottom'}
execute if score .contributor_display data matches 4 run function c:build/contributor_display/credit/name/lang/en_pt {line:'bottom'}
execute if score .contributor_display data matches 5 run function c:build/contributor_display/credit/name/lang/es_es {line:'bottom'}
execute if score .contributor_display data matches 6 run function c:build/contributor_display/credit/name/lang/it_it {line:'bottom'}
execute if score .contributor_display data matches 7 run function c:build/contributor_display/credit/name/lang/ja_jp {line:'bottom'}
execute if score .contributor_display data matches 8 run function c:build/contributor_display/credit/name/lang/zh_cn {line:'bottom'}
execute if score .contributor_display data matches 9 run function c:build/contributor_display/credit/name/lang/ko_kr {line:'bottom'}
execute if score .contributor_display data matches 10 run function c:build/contributor_display/credit/name/lang/ru_ru {line:'bottom'}
execute if score .contributor_display data matches 11 run function c:build/contributor_display/credit/name/lang/de_de {line:'bottom'}
