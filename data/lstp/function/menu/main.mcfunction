execute if score @s lstp.menu.trigger matches 1 run function lstp:menu/screen_wobble
execute if score @s lstp.menu.trigger matches 2 run function lstp:menu/tp_flash
execute if score @s lstp.menu.trigger matches 3 run function lstp:menu/screen_zoom
execute if score @s lstp.menu.trigger matches 4 run function lstp:menu/sneak_required
execute if score @s lstp.menu.trigger matches 5..10 run function lstp:menu/show_name

scoreboard players enable @s lstp.menu.trigger