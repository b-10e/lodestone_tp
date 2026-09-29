# charge if requirements met
execute \
    if predicate lsw:sneaking_on_lodestone \
    if items entity @s weapon.* *[minecraft:lodestone_tracker] \
    if items entity @s weapon.* minecraft:ender_pearl \
    unless score @s lsw.charge_time matches ..-1 \
        run return run function lsw:player/add_charge

# otherwise change score appropriately
execute if score @s lsw.charge_time matches ..-1 run scoreboard players add @s lsw.charge_time 1
execute if score @s lsw.charge_time matches 1.. run scoreboard players remove @s lsw.charge_time 1
attribute @s movement_speed modifier remove lsw:fov