playsound block.respawn_anchor.deplete block @a ~ ~ ~ 1 0.7
playsound entity.player.teleport block @a ~ ~ ~ 1 0.7
particle dust_color_transition{from_color:[1,0,1],to_color:[1,1,1],scale:1} ~ ~ ~ 1 1 1 0.1 32
particle end_rod ~ ~ ~ 1 1 1 0.1 32

attribute @s movement_speed modifier remove lstp:fov
effect give @s minecraft:blindness 1 0 true
