# get index of slot with fuel item
$data modify storage lstp:temp macro.slot set from block ~ ~ ~ Items[{id:"$(fuel_item_id)"}].Slot
execute unless data storage lstp:temp macro.slot run data modify storage lstp:temp macro.slot set value 0

# consume fuel from slots
function lstp:tp/consume_fuel/block_macro with storage lstp:temp macro