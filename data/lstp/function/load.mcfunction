scoreboard objectives add lstp.charge_time dummy
scoreboard objectives add lstp.menu.trigger trigger
scoreboard objectives add lstp.config dummy
scoreboard objectives add lstp.int dummy
scoreboard objectives add lstp.const dummy

scoreboard players set #2 lstp.const 2
scoreboard players set #lstp.pitch_multiplier lstp.const 2
scoreboard players set #lstp.fov_multiplier lstp.const 2

# default configs
execute unless data storage lstp:config tp_time run data modify storage lstp:config tp_time set value 60
execute unless data storage lstp:config charge_interval run data modify storage lstp:config charge_interval set value 20
execute unless data storage lstp:config fuel_item_id run data modify storage lstp:config fuel_item_id set value "minecraft:ender_pearl"
execute unless data storage lstp:config fuel_item_count run data modify storage lstp:config fuel_item_count set value 1
execute unless data storage lstp:config fuel_level_count run data modify storage lstp:config fuel_level_count set value 1
execute unless data storage lstp:config priority_fuel_type run data modify storage lstp:config priority_fuel_type set value "item"
execute unless data storage lstp:config fuel_type run data modify storage lstp:config fuel_type set value "item"

execute unless score #lstp.tp_time lstp.config matches 0.. store result score #lstp.tp_time lstp.config run data get storage lstp:config tp_time
execute unless score #lstp.charge_interval lstp.config matches 0.. store result score #lstp.charge_interval lstp.config run data get storage lstp:config charge_interval
execute unless score #lstp.fuel_item_count lstp.config matches 0.. store result score #lstp.fuel_item_count lstp.config run data get storage lstp:config fuel_item_count
execute unless score #lstp.fuel_level_count lstp.config matches 0.. store result score #lstp.fuel_level_count lstp.config run data get storage lstp:config fuel_level_count

data modify storage lstp:text message_prefix set value [{text:"[",color:"dark_gray"},{text:"Lodestone TP",color:"gray"},{"text":"] ",color:"dark_gray"}]
data modify storage lstp:text disabled set value [{text:"[",color:"dark_gray"},{text:"X",color:"red",bold:true},{"text":"] ",color:"dark_gray"}]
data modify storage lstp:text enabled set value [{text:"[",color:"dark_gray"},{text:"✔",color:"green"},{"text":"] ",color:"dark_gray"}]
#tellraw @s [{text:"[",color:"dark_gray"},{text:"Lodestone TP",color:"gray"},{"text":"] ",color:"dark_gray"}]