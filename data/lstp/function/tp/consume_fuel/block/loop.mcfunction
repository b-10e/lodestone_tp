# succeed if enough items have been consumed
execute unless score #lstp.fuel_target lstp.int matches 1.. run return 1

# consume items from current slot
function lstp:tp/consume_fuel/block/consume_item/loop with storage lstp:temp macro

# move to next slot if applicable
data remove storage lstp:temp slots[0]
data modify storage lstp:temp macro.slot set from storage lstp:temp slots[0]
execute if data storage lstp:temp slots[0] run function lstp:tp/consume_fuel/block/loop