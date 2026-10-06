# check block items
execute if function lstp:player/check_fuel/block_item run return 1

# check player items
execute if function lstp:player/check_fuel/held_item run return 1

return fail