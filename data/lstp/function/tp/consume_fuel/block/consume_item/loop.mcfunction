# terminate if no items left in slot or if enough items have been consumed
execute unless score #lstp.fuel_target lstp.int matches 1.. run return 1

# otherwise, consume item and repeat
$item modify block ~ ~ ~ container.$(slot) lstp:remove_1
scoreboard players remove #lstp.fuel_target lstp.int 1
$execute if items block ~ ~ ~ container.$(slot) * run function lstp:tp/consume_fuel/block/consume_item/loop with storage lstp:temp macro