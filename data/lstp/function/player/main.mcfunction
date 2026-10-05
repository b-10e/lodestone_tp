# menu stuff
function lstp:menu/main

# terminate if player not on a lodestone
execute unless predicate lstp:on_lodestone run return run function lstp:player/remove_charge_time

# terminate if player is/is not sneaking depending on their settings
execute as @s[tag=lstp.settings.sneak_required.false] if predicate lstp:sneak_input run return run function lstp:player/remove_charge_time
execute as @s[tag=!lstp.settings.sneak_required.false] unless predicate lstp:sneak_input run return run function lstp:player/remove_charge_time

# terminate if player is on cooldown or hasn't moved from the destination yet
execute as @s[tag=lstp.backwarp_prevention] run return run function lstp:player/remove_charge_time
execute if score @s lstp.charge_time matches ..-1 run return run function lstp:player/remove_charge_time

# check for fuel, either provided by the player or the block below
execute unless function lstp:player/check_fuel/main run return run function lstp:player/remove_charge_time

# check for compass, either provided by the player or the item frame above
execute unless function lstp:player/check_compass run return run function lstp:player/remove_charge_time

# add charge time if player has both fuel and a destination
function lstp:player/add_charge_time

