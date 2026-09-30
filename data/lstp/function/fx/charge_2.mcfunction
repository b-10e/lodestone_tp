playsound block.respawn_anchor.charge block @a ~ ~ ~ 1 0.7
particle dust_color_transition{from_color:[0.4,0.1,0.4],to_color:[1,1,1],scale:0.9} ~ ~ ~ 1 1 1 0.1 32

attribute @s movement_speed modifier remove lstp:fov
attribute @s movement_speed modifier add lstp:fov -0.03 add_value
effect give @s minecraft:nausea 5 1 true