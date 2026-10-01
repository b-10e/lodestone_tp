playsound block.respawn_anchor.charge block @a ~ ~ ~ 0.5 0.9
particle dust_color_transition{from_color:[0.8,0.2,0.8],to_color:[1,1,1],scale:1} ~ ~ ~ 1 1 1 0.1 32

attribute @s movement_speed modifier remove lstp:fov
attribute @s[tag=!lstp.settings.screen_zoom.false] movement_speed modifier add lstp:fov -0.05 add_value