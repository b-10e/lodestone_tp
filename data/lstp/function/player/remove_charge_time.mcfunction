# backwarp prevention check
execute \
    unless predicate lstp:on_lodestone \
    if predicate lstp:on_ground \
        run tag @s remove lstp.backwarp_prevention

# move charge time towards 0
execute if score @s lstp.charge_time matches ..-1 run scoreboard players add @s lstp.charge_time 1
execute if score @s lstp.charge_time matches 1.. run scoreboard players set @s lstp.charge_time 0

attribute @s movement_speed modifier remove lstp:fov