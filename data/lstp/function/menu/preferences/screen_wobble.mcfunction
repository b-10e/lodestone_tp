scoreboard players reset @s lstp.menu.trigger
scoreboard players enable @s lstp.menu.trigger

# fx
execute if entity @s[tag=lstp.settings.screen_wobble.false] run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 1 1.5
execute if entity @s[tag=lstp.settings.screen_wobble.false] run tellraw @s [{text:"[Lodestone TP] ",color:"gray"},{text:"Screen Wobble Enabled",color:"green"}]
execute unless entity @s[tag=lstp.settings.screen_wobble.false] run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 1 0.7
execute unless entity @s[tag=lstp.settings.screen_wobble.false] run tellraw @s [{text:"[Lodestone TP] ",color:"gray"},{text:"Screen Wobble Disabled",color:"red"}]

# toggle
execute if entity @s[tag=lstp.settings.screen_wobble.false] run return run tag @s remove lstp.settings.screen_wobble.false
tag @s add lstp.settings.screen_wobble.false