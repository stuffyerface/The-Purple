# version
data remove storage nlib:dummy version
data modify storage nlib:dummy version_old set from storage main:data version
data modify storage nlib:dummy version merge value {id: "v1.0.11-9"}
data modify storage nlib:dummy version merge value {data: 1}
data modify storage nlib:dummy version merge value {date: "September 14th, 2026"}
data modify storage nlib:dummy version merge value {name: {translate:'purple.name', fallback:'%s', with:[[{color:'#AA00AA',text:'T'},{color:'#B317AE',text:'h'},{color:'#BD2DB2',text:'e'},' ',{color:'#C644B5',text:'P'},{color:'#D05BB9',text:'u'},{color:'#D971BD',text:'r'},{color:'#E388C1',text:'p'},{color:'#EC9FC4',text:'l'},{color:'#FFCCCC',text:'e'}]]} }
data modify storage nlib:dummy version merge value {desc: "The Purple, by Stuffy and nightlibra"}
data modify storage nlib:dummy version merge value {series: "beta"}
data modify storage nlib:dummy version.resource_pack merge value {id: {translate:'purple.version', fallback:'§c❌§r'}}
data modify storage nlib:dummy version.resource_pack merge value {date: {translate:'purple.version.date', fallback:'§c❌§r'}}
data modify storage main:data version merge from storage nlib:dummy version

# /trigger version
scoreboard players set @s version -2147483648
scoreboard players enable @s version

# /trigger version
#function nlib:util/data/version {url:'https://github.com/stuffyerface/The-Purple'}

execute unless entity @s[type=minecraft:player] run return fail
tellraw @s ''

# name [{storage:'nlib:dummy', nbt:'version.desc', interpret:true}, '\n', {color:gray, text:'https://github.com/stuffyerface/The-Purple'}]
tellraw @s {storage:'nlib:dummy', nbt:'version.name', interpret:true, hover_event:{action:'show_text', value:[[{storage:'nlib:dummy', nbt:'version.desc', interpret:true}, '\n', {color:gray, text:'https://github.com/stuffyerface/The-Purple'}]]}, click_event:{action:'open_url', url:'https://github.com/stuffyerface/The-Purple'}}

# datapack
tellraw @s {translate:'nlib.technical.version.line', fallback:'• %s = %s', color:dark_gray, with:[[{translate:'nlib.version.series', fallback:'series', color:gray}], [{text:'',color:green}, {storage:'nlib:dummy', nbt:'version.series', interpret:true}]], hover_event:{action:'show_text', value:[[{storage:'nlib:dummy', nbt:'version.desc', interpret:true}, '\n', {color:gray, text:'https://github.com/stuffyerface/The-Purple'}]]}, click_event:{action:'open_url', url:'https://github.com/stuffyerface/The-Purple'}}
tellraw @s {translate:'nlib.technical.version.pipe', fallback:'• %s = %s | %s', color:dark_gray, with:[[{translate:'nlib.version.id', fallback:'version', color:gray}], [{text:'',color:green}, {storage:'nlib:dummy', nbt:'version.id', interpret:true}], [{storage:'nlib:dummy', nbt:'version.data', color:gray, plain:true}]], hover_event:{action:'show_text', value:[[{storage:'nlib:dummy', nbt:'version.desc', interpret:true}, '\n', {color:gray, text:'https://github.com/stuffyerface/The-Purple'}]]}, click_event:{action:'open_url', url:'https://github.com/stuffyerface/The-Purple'}}
tellraw @s {translate:'nlib.technical.version.line', fallback:'• %s = %s', color:dark_gray, with:[[{translate:'nlib.version.date', fallback:'date', color:gray}], [{text:'',color:white}, {storage:'nlib:dummy', nbt:'version.date', interpret:true}]], hover_event:{action:'show_text', value:[[{storage:'nlib:dummy', nbt:'version.desc', interpret:true}, '\n', {color:gray, text:'https://github.com/stuffyerface/The-Purple'}]]}, click_event:{action:'open_url', url:'https://github.com/stuffyerface/The-Purple'}}

# resource pack
execute if data storage nlib:dummy version.resource_pack run tellraw @s {translate:'nlib.technical.version.line', fallback:'• %s = %s', color:dark_gray, with:[[{translate:'nlib.version.resource_pack.id', fallback:'resource version', color:gray}], [{text:'',color:green}, {storage:'nlib:dummy', nbt:'version.resource_pack.id', interpret:true}]], hover_event:{action:'show_text', value:[[{storage:'nlib:dummy', nbt:'version.desc', interpret:true}, '\n', {color:gray, text:'https://github.com/stuffyerface/The-Purple'}]]}, click_event:{action:'open_url', url:'https://github.com/stuffyerface/The-Purple'}}
execute if data storage nlib:dummy version.resource_pack run tellraw @s {translate:'nlib.technical.version.line', fallback:'• %s = %s', color:dark_gray, with:[[{translate:'nlib.version.resource_pack.date', fallback:'resource date', color:gray}], [{text:'',color:white}, {storage:'nlib:dummy', nbt:'version.resource_pack.date', interpret:true}]], hover_event:{action:'show_text', value:[[{storage:'nlib:dummy', nbt:'version.desc', interpret:true}, '\n', {color:gray, text:'https://github.com/stuffyerface/The-Purple'}]]}, click_event:{action:'open_url', url:'https://github.com/stuffyerface/The-Purple'}}

# clean up
tellraw @s ''
