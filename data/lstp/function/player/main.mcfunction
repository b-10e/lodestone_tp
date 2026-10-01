# menu stuff
function lstp:menu/main

# requirements
execute unless predicate lstp:on_lodestone run return run function lstp:player/remove_charge
execute as @s[tag=lstp.settings.sneak_required.false] if predicate lstp:sneak_input run return run function lstp:player/remove_charge
execute as @s[tag=!lstp.settings.sneak_required.false] unless predicate lstp:sneak_input run return run function lstp:player/remove_charge
execute if entity @s[tag=lstp.backwarp_prevention] run return run function lstp:player/remove_charge
execute if score @s lstp.charge_time matches ..-1 run return run function lstp:player/remove_charge

# check for fuel, either provided by the player or the block below
execute unless function lstp:player/check_fuel/main run return run function lstp:player/remove_charge

# check for compass, either provided by the player or the item frame above
execute unless function lstp:player/check_compass run return run function lstp:player/remove_charge

# add charge if player has both fuel and a destination
function lstp:player/add_charge

