# get index of slot with fuel item
data modify storage lstp:temp macro.slot set from block ~ ~ ~ Items[{id:"minecraft:ender_pearl"}].Slot

# consume fuel from slots
function lstp:tp/consume_fuel/macro with storage lstp:temp macro