tag @s remove lstp.settings.show_name.none
tag @s remove lstp.settings.show_name.title
tag @s remove lstp.settings.show_name.actionbar

execute if score @s lstp.menu.trigger matches 5 run tag @s add lstp.settings.show_name.none
execute if score @s lstp.menu.trigger matches 6 run tag @s add lstp.settings.show_name.actionbar
execute if score @s lstp.menu.trigger matches 7 run tag @s add lstp.settings.show_name.title

# fx
execute if entity @s[tag=lstp.settings.show_name.none] run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 1 0.7
execute if entity @s[tag=lstp.settings.show_name.none] run tellraw @s [{storage:"lstp:config",nbt:"message_prefix",interpret:true},{text:"Destination Name Disabled",color:"red"}]
execute if entity @s[tag=lstp.settings.show_name.title] run function lstp:fx/yes_sound
execute if entity @s[tag=lstp.settings.show_name.title] run tellraw @s [{storage:"lstp:config",nbt:"message_prefix",interpret:true},{text:"Destination Name Shown On Title",color:"green"}]
execute if entity @s[tag=lstp.settings.show_name.actionbar] run function lstp:fx/yes_sound
execute if entity @s[tag=lstp.settings.show_name.actionbar] run tellraw @s [{storage:"lstp:config",nbt:"message_prefix",interpret:true},{text:"Destination Name Shown On Actionbar",color:"green"}]
