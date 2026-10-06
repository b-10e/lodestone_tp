

# check player items
$execute unless items entity @s weapon.* $(fuel_item_id) run return fail
$execute store result score #lstp.item_count lstp.int run clear @s $(fuel_item_id) 0
execute if score #lstp.item_count lstp.int >= #lstp.fuel_item_count lstp.config run return 1

return fail