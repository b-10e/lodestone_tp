# consume item from container if possible
$execute positioned ~ ~-2 ~ if items block ~ ~ ~ container.* $(fuel_item_id) run return run function lstp:tp/consume_fuel/block with storage lstp:config

# otherwise consume item from hand
function lstp:tp/consume_fuel/hand with storage lstp:config