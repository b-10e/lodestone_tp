# get list of slots with fuel item
data modify storage lstp:temp slots set value []
$data modify storage lstp:temp slots append from block ~ ~ ~ Items[{id:"$(fuel_item_id)"}].Slot

# prepare for loop
data modify storage lstp:temp macro.slot set from storage lstp:temp slots[0]
scoreboard players operation #lstp.fuel_target lstp.int = #lstp.fuel_item_count lstp.config

# consume fuel from slot
function lstp:tp/consume_fuel/block/loop

return 1