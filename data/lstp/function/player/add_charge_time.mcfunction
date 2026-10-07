# fx
execute if predicate {condition:"random_chance",chance:0.4} positioned ~ ~1 ~ run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.1 1
    # do charge effect every charge effect interval
    scoreboard players operation #lstp.temp_charge_time lstp.int = @s lstp.charge_time
    scoreboard players operation #lstp.temp_charge_time lstp.int %= #lstp.charge_interval lstp.config
    execute if score #lstp.temp_charge_time lstp.int matches 0 positioned ~ ~1 ~ run function lstp:fx/charge

# tp if charge time meets threshold
execute if score @s lstp.charge_time >= #lstp.tp_time lstp.config run function lstp:tp/main

# add charge
scoreboard players add @s lstp.charge_time 1