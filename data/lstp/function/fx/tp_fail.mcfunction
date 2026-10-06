effect give @s[tag=!lstp.settings.tp_flash.false] minecraft:blindness 5 255 true
effect give @s[tag=!lstp.settings.screen_wobble.false] minecraft:nausea 5 255 true

playsound minecraft:block.creaking_heart.spawn block @a ~ ~ ~ 1 0.5
playsound minecraft:block.respawn_anchor.set_spawn block @a ~ ~ ~ 1 0.5
playsound minecraft:block.decorated_pot.insert_fail block @a ~ ~ ~ 1 0.5

particle dust_color_transition{from_color:[1,0,0],to_color:[0,0,0],scale:1} ~ ~ ~ 1 1 1 0.1 32