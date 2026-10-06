# fx
execute if entity @s[tag=lstp.settings.show_name.false] run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 1 1.5
execute if entity @s[tag=lstp.settings.show_name.false] run tellraw @s [{storage:"lstp:text",nbt:"message_prefix",interpret:true},{text:"Destination Name Display Enabled",color:"green"}]
execute unless entity @s[tag=lstp.settings.show_name.false] run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 1 0.7
execute unless entity @s[tag=lstp.settings.show_name.false] run tellraw @s [{storage:"lstp:text",nbt:"message_prefix",interpret:true},{text:"Destination Name Display Disabled",color:"red"}]

# toggle
execute if entity @s[tag=lstp.settings.show_name.false] run return run tag @s remove lstp.settings.show_name.false
tag @s add lstp.settings.show_name.false