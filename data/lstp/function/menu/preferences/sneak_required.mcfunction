scoreboard players reset @s lstp.menu.trigger
scoreboard players enable @s lstp.menu.trigger

# fx
execute if entity @s[tag=lstp.settings.sneak_required.false] run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 1 1.5
execute if entity @s[tag=lstp.settings.sneak_required.false] run tellraw @s [{text:"[Lodestone TP] ",color:"gray"},{text:"Sneaking Required For Teleporting",color:"green"}]
execute unless entity @s[tag=lstp.settings.sneak_required.false] run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 1 0.7
execute unless entity @s[tag=lstp.settings.sneak_required.false] run tellraw @s [{text:"[Lodestone TP] ",color:"gray"},{text:"Sneaking Not Required For Teleporting",color:"red"}]

# toggle
execute if entity @s[tag=lstp.settings.sneak_required.false] run return run tag @s remove lstp.settings.sneak_required.false
tag @s add lstp.settings.sneak_required.false