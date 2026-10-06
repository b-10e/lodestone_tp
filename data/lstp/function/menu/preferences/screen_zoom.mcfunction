# fx
execute if entity @s[tag=lstp.settings.screen_zoom.false] run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 1 1.5
execute if entity @s[tag=lstp.settings.screen_zoom.false] run tellraw @s [{storage:"lstp:text",nbt:"message_prefix",interpret:true},{text:"Screen Zoom Enabled",color:"green"}]
execute unless entity @s[tag=lstp.settings.screen_zoom.false] run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 1 0.7
execute unless entity @s[tag=lstp.settings.screen_zoom.false] run tellraw @s [{storage:"lstp:text",nbt:"message_prefix",interpret:true},{text:"Screen Zoom Disabled",color:"red"}]

# toggle
execute if entity @s[tag=lstp.settings.screen_zoom.false] run return run tag @s remove lstp.settings.screen_zoom.false
tag @s add lstp.settings.screen_zoom.false