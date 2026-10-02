# consume item from container if possible
execute store result score #lstp.temp.contained_fuel_item_count 
execute positioned ~ ~-2 ~ if items block ~ ~ ~ container.* minecraft:ender_pearl run return run function lstp:tp/consume_fuel/block

# otherwise consume item from hand
function lstp:tp/consume_fuel/hand