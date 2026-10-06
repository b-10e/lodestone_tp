$data modify storage lstp:config fuel_type set value "$(fuel_type)"
$data modify storage lstp:config fuel_item_id set value "$(fuel_item_id)"
$data modify storage lstp:config fuel_item_count set value $(fuel_item_count)
$data modify storage lstp:config fuel_level_count set value $(fuel_level_count)

execute store result score #lstp.fuel_item_count lstp.config run data get storage lstp:config fuel_item_count
execute store result score #lstp.fuel_level_count lstp.config run data get storage lstp:config fuel_level_count

function lstp:fx/yes_sound
tellraw @s [{storage:"lstp:text",nbt:"message_prefix",interpret:true},{text:"Fuel Settings Saved",color:"green"}]

data merge storage lstp:config {"allow_item_fuel":false,"allow_xp_fuel":false,"priority_fuel_type":"item"}
execute if data storage lstp:config {"fuel_type":"item"} run return run data merge storage lstp:config {"allow_item_fuel":true}
execute if data storage lstp:config {"fuel_type":"xp"} run return run data merge storage lstp:config {"allow_xp_fuel":true}
execute if data storage lstp:config {"fuel_type":"item_or_xp"} run return run data merge storage lstp:config {"allow_item_fuel":true,"allow_xp_fuel":true}
execute if data storage lstp:config {"fuel_type":"xp_or_item"} run return run data merge storage lstp:config {"allow_item_fuel":true,"allow_xp_fuel":true,"priority_fuel_type":"xp"}
execute if data storage lstp:config {"fuel_type":"item_and_xp"} run return run data merge storage lstp:config {"allow_item_fuel":true,"allow_xp_fuel":true}


