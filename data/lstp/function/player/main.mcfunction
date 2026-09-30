# requirements
execute unless predicate lstp:sneaking_on_lodestone run return run function lstp:player/remove_charge
execute if score @s lstp.charge_time matches ..-1 run return run function lstp:player/remove_charge

# make sure there is fuel, either provided by the player or the block below
execute if items entity @s weapon.* minecraft:ender_pearl run tag @s add lstp.has_fuel
execute unless entity @s[tag=lstp.has_fuel] if items block ~ ~-2 ~ container.* minecraft:ender_pearl run tag @s add lstp.has_fuel
execute unless entity @s[tag=lstp.has_fuel] run return run function lstp:player/remove_charge

# make sure there is a destination, either provided by the player or the item frame on top
execute if items entity @s weapon.* *[minecraft:lodestone_tracker] run tag @s add lstp.has_destination
execute unless entity @s[tag=lstp.has_destination] if items entity @e[dx=0,type=#lstp:item_frame,tag=!smithed.strict,limit=1] container.0 *[minecraft:lodestone_tracker] run tag @s add lstp.has_destination

# add charge if player has both fuel and a destination
execute if entity @s[tag=lstp.has_fuel,tag=lstp.has_destination] run return run function lstp:player/add_charge

# remove charge otherwise
function lstp:player/remove_charge

