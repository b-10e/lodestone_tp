# consume item from container if possible
execute positioned ~ ~-2 ~ if items block ~ ~ ~ container.* minecraft:ender_pearl run return run function lstp:tp/consume_fuel/block

# otherwise consume item from hand
function lstp:tp/consume_fuel/hand