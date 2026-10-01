playsound block.respawn_anchor.charge block @a ~ ~ ~ 0.5 0.7
particle dust_color_transition{from_color:[0.4,0.1,0.4],to_color:[1,1,1],scale:0.9} ~ ~ ~ 1 1 1 0.1 32

attribute @s movement_speed modifier remove lstp:fov
attribute @s[tag=!lstp.settings.screen_zoom.false] movement_speed modifier add lstp:fov -0.03 add_value
effect give @s[tag=!lstp.settings.screen_wobble.false] minecraft:nausea 5 1 true