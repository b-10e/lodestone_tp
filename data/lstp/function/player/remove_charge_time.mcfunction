# backwarp prevention check
execute \
    unless predicate lstp:on_lodestone \
    if predicate lstp:on_ground \
        run tag @s remove lstp.backwarp_prevention

# move charge time towards 0
scoreboard players set @s lstp.charge_time 0

# remove fov effect
attribute @s movement_speed modifier remove lstp:fov