# fx
execute if entity @s[tag=lstp.settings.screen_wobble.false] run function lstp:fx/yes_sound
execute if entity @s[tag=lstp.settings.screen_wobble.false] run tellraw @s [{storage:"lstp:config",nbt:"message_prefix",interpret:true},{text:"Screen Wobble Enabled",color:"green"}]
execute unless entity @s[tag=lstp.settings.screen_wobble.false] run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 1 0.7
execute unless entity @s[tag=lstp.settings.screen_wobble.false] run tellraw @s [{storage:"lstp:config",nbt:"message_prefix",interpret:true},{text:"Screen Wobble Disabled",color:"red"}]

# toggle
execute if entity @s[tag=lstp.settings.screen_wobble.false] run return run tag @s remove lstp.settings.screen_wobble.false
tag @s add lstp.settings.screen_wobble.false