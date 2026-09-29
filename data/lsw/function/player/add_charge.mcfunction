scoreboard players add @s lsw.charge_time 1

# fx
execute if score @s lsw.charge_time matches 1 positioned ~ ~1 ~ run function lsw:fx/charge_1
execute if score @s lsw.charge_time matches 21 positioned ~ ~1 ~ run function lsw:fx/charge_2
execute if score @s lsw.charge_time matches 41 positioned ~ ~1 ~ run function lsw:fx/charge_3

# tp
execute if score @s lsw.charge_time matches 60.. run function lsw:tp/main