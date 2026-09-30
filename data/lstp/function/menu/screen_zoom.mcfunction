scoreboard players reset @s lstp.menu.trigger
scoreboard players enable @s lstp.menu.trigger

# fx
execute if entity @s[tag=lstp.settings.disable_screen_zoom] run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 1 1.5
execute if entity @s[tag=lstp.settings.disable_screen_zoom] run tellraw @s [{text:"[Lodestone TP] ",color:"gray"},{text:"Screen Zoom Enabled",color:"green"}]
execute unless entity @s[tag=lstp.settings.disable_screen_zoom] run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 1 0.7
execute unless entity @s[tag=lstp.settings.disable_screen_zoom] run tellraw @s [{text:"[Lodestone TP] ",color:"gray"},{text:"Screen Zoom Disabled",color:"red"}]

# toggle
execute if entity @s[tag=lstp.settings.disable_screen_zoom] run return run tag @s remove lstp.settings.disable_screen_zoom
tag @s add lstp.settings.disable_screen_zoom