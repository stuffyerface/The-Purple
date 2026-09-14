$execute unless data storage database:player data[{UUID:$(UUID)}] run data modify storage database:player data append value {UUID:$(UUID)}
$data modify storage database:player data[{UUID:$(UUID)}].inventory set from storage main:dummy player
