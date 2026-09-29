playsound block.respawn_anchor.charge block @a ~ ~ ~ 1 0.5
particle dust_color_transition{from_color:[0.2,0.0,0.2],to_color:[1,1,1],scale:0.8} ~ ~ ~ 1 1 1 0.1 32

attribute @s movement_speed modifier remove lstp:fov
attribute @s movement_speed modifier add lstp:fov -0.01 add_value