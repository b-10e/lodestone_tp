scoreboard players add @s lstp.charge_time 1

# fx
execute if score @s lstp.charge_time matches 1 positioned ~ ~1 ~ run function lstp:fx/charge_1
execute if score @s lstp.charge_time matches 21 positioned ~ ~1 ~ run function lstp:fx/charge_2
execute if score @s lstp.charge_time matches 41 positioned ~ ~1 ~ run function lstp:fx/charge_3

# tp
execute if score @s lstp.charge_time matches 60.. run function lstp:tp/main