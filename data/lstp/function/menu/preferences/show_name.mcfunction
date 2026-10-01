tag @s remove lstp.settings.show_name.none
tag @s remove lstp.settings.show_name.title
tag @s remove lstp.settings.show_name.actionbar

execute if score @s lstp.menu.trigger matches 5 run tag @s add lstp.settings.show_name.none
execute if score @s lstp.menu.trigger matches 6 run tag @s add lstp.settings.show_name.actionbar
execute if score @s lstp.menu.trigger matches 7 run tag @s add lstp.settings.show_name.title

scoreboard players reset @s lstp.menu.trigger
scoreboard players enable @s lstp.menu.trigger

# fx
execute if entity @s[tag=lstp.settings.show_name.none] run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 1 0.7
execute if entity @s[tag=lstp.settings.show_name.none] run tellraw @s [{text:"[Lodestone TP] ",color:"gray"},{text:"Destination Name Disabled",color:"red"}]
execute if entity @s[tag=lstp.settings.show_name.title] run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 1 1.5
execute if entity @s[tag=lstp.settings.show_name.title] run tellraw @s [{text:"[Lodestone TP] ",color:"gray"},{text:"Destination Name Shown On Title",color:"green"}]
execute if entity @s[tag=lstp.settings.show_name.actionbar] run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 1 1.5
execute if entity @s[tag=lstp.settings.show_name.actionbar] run tellraw @s [{text:"[Lodestone TP] ",color:"gray"},{text:"Destination Name Shown On Actionbar",color:"green"}]
