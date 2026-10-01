scoreboard players reset @s lstp.menu.trigger
scoreboard players enable @s lstp.menu.trigger

# fx
execute if entity @s[tag=lstp.settings.tp_flash.false] run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 1 1.5
execute if entity @s[tag=lstp.settings.tp_flash.false] run tellraw @s [{text:"[Lodestone TP] ",color:"gray"},{text:"Teleport Flash Enabled",color:"green"}]
execute unless entity @s[tag=lstp.settings.tp_flash.false] run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 1 0.7
execute unless entity @s[tag=lstp.settings.tp_flash.false] run tellraw @s [{text:"[Lodestone TP] ",color:"gray"},{text:"Teleport Flash Disabled",color:"red"}]

# toggle
execute if entity @s[tag=lstp.settings.tp_flash.false] run return run tag @s remove lstp.settings.tp_flash.false
tag @s add lstp.settings.tp_flash.false