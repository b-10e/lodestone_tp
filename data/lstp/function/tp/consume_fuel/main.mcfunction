# succeed if no fuel required
execute if data storage lstp:config {fuel_type:"none"} run return 1

# if both items and xp are required, consume both
execute \
    if data storage lstp:config {fuel_type:"item_and_xp"} \
    positioned ~ ~-2 ~ \
    if function lstp:player/check_fuel/item \
    if function lstp:player/check_fuel/xp \
        run return run function lstp:tp/consume_fuel/item_and_xp

# otherwise, check priorities first
execute \
    if data storage lstp:config {priority_fuel_type:"item"} \
    positioned ~ ~-2 ~ \
    if function lstp:player/check_fuel/block_item \
        run return run function lstp:tp/consume_fuel/block/main with storage lstp:config
execute \
    if data storage lstp:config {priority_fuel_type:"item"} \
    if function lstp:player/check_fuel/held_item \
        run return run function lstp:tp/consume_fuel/hand with storage lstp:config
execute \
    if data storage lstp:config {priority_fuel_type:"xp"} \
    if function lstp:player/check_fuel/xp \
        run return run function lstp:tp/consume_fuel/xp with storage lstp:config

# priorities didn't succeed, check fallbacks
execute \
    positioned ~ ~-2 ~ \
    if function lstp:player/check_fuel/block_item \
        run return run function lstp:tp/consume_fuel/block/main with storage lstp:config
execute \
    if function lstp:player/check_fuel/held_item \
        run return run function lstp:tp/consume_fuel/hand with storage lstp:config
execute \
    if function lstp:player/check_fuel/xp \
        run return run function lstp:tp/consume_fuel/xp with storage lstp:config
