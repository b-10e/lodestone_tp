$execute if items entity @s weapon.* $(fuel_item_id) run return 1
$execute if items block ~ ~-2 ~ container.* $(fuel_item_id) run return 1
return fail