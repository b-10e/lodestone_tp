# check block items
$execute if data block ~ ~ ~ Items store result score #lstp.item_count lstp.int if items block ~ ~ ~ container.* $(fuel_item_id)
execute if score #lstp.item_count lstp.int >= #lstp.fuel_item_count lstp.config run return 1

return fail