scoreboard objectives add lstp.charge_time dummy
scoreboard objectives add lstp.menu.trigger trigger
scoreboard objectives add lstp.config dummy

# default configs
execute unless score #lstp.tp_time lstp.config matches 0.. run scoreboard players set #lstp.tp_time lstp.config 60
execute unless score #lstp.zoom_interval lstp.config matches 0.. run scoreboard players set #lstp.zoom_interval lstp.config 20

execute unless data storage lstp:config fuel_item_id run data modify storage lstp:config fuel_item_id set value "minecraft:ender_pearl"
execute unless data storage lstp:config 