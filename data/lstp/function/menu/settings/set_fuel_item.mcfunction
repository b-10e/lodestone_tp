$data modify storage lstp:config fuel_item_id set value "$(id)"
playsound minecraft:block.note_block.bit player @s ~ ~ ~ 1 1.5
$tellraw @s [{text:"[Lodestone TP] ",color:"gray"},{text:"Fuel Item Set To: $(id)",color:"green"}]