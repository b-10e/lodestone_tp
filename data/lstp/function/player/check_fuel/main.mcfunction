# succeed if no fuel required
execute if data storage lstp:config {fuel_type:"none"} run return 1

# check if items and xp are required
execute \
    if data storage lstp:config {fuel_type:"item_and_xp"} \
    positioned ~ ~-2 ~ \
        run return run function lstp:player/check_fuel/item_and_xp

# check item
execute positioned ~ ~-2 ~ if function lstp:player/check_fuel/item run return 1

# check xp
execute if function lstp:player/check_fuel/xp run return 1

return fail