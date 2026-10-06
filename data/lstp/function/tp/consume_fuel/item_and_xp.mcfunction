# consume xp
execute \
    if function lstp:player/check_fuel/xp \
        run function lstp:tp/consume_fuel/xp with storage lstp:config

# consume item
execute \
    if function lstp:player/check_fuel/block_item \
        run return run function lstp:tp/consume_fuel/block/main with storage lstp:config
execute \
    if function lstp:player/check_fuel/held_item \
        run return run function lstp:tp/consume_fuel/hand with storage lstp:config
