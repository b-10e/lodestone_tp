$data modify storage lstp:config fuel_item_id set value "$(fuel_item_id)"

function lstp:fx/yes_sound
$tellraw @s [{storage:"lstp:config",nbt:"message_prefix",interpret:true},{text:"Fuel Item Set To: $(fuel_item_id)",color:"green"}]