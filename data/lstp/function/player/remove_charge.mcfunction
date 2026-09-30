execute if score @s lstp.charge_time matches ..-1 run scoreboard players add @s lstp.charge_time 1
execute if score @s lstp.charge_time matches 1.. run scoreboard players remove @s lstp.charge_time 1
attribute @s movement_speed modifier remove lstp:fov