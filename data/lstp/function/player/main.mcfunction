# menu stuff
function lstp:menu/main

# requirements
execute unless predicate lstp:on_lodestone run return run function lstp:player/remove_charge
execute as @s[tag=lstp.settings.disable_sneak_required] if predicate lstp:sneak_input run return run function lstp:player/remove_charge
execute as @s[tag=!lstp.settings.disable_sneak_required] unless predicate lstp:sneak_input run return run function lstp:player/remove_charge
execute if entity @s[tag=lstp.backwarp_prevention] run return run function lstp:player/remove_charge
execute if score @s lstp.charge_time matches ..-1 run return run function lstp:player/remove_charge

# check for fuel, either provided by the player or the block below
execute if items entity @s weapon.* minecraft:ender_pearl run tag @s add lstp.has_fuel
execute unless entity @s[tag=lstp.has_fuel] if items block ~ ~-2 ~ container.* minecraft:ender_pearl run tag @s add lstp.has_fuel
execute unless entity @s[tag=lstp.has_fuel] run return run function lstp:player/remove_charge

# check for compass, either provided by the player or the item frame above
execute if items entity @s weapon.* *[minecraft:lodestone_tracker] run tag @s add lstp.has_destination
execute unless entity @s[tag=lstp.has_destination] if items entity @e[dx=0,dy=3,type=#lstp:item_frame,tag=!smithed.strict,limit=1] container.0 *[minecraft:lodestone_tracker] run tag @s add lstp.has_destination
execute unless entity @s[tag=lstp.has_destination] run return run function lstp:player/remove_charge

# add charge if player has both fuel and a destination
function lstp:player/add_charge

