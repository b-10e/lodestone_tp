$data modify storage lstp:config tp_time set value $(tp_time)
$data modify storage lstp:config charge_interval set value $(charge_interval)
$data modify storage lstp:config allow_cross_dimensional_tp set value $(allow_cross_dimensional_tp)

# convert from seconds to ticks and store
execute store result score #lstp.tp_time lstp.config run data get storage lstp:config tp_time 20
execute store result score #lstp.charge_interval lstp.config run data get storage lstp:config charge_interval 20
execute store result storage lstp:config tp_time int 1 run scoreboard players get #lstp.tp_time lstp.config
execute store result storage lstp:config charge_interval int 1 run scoreboard players get #lstp.charge_interval lstp.config

function lstp:fx/yes_sound
tellraw @s [{storage:"lstp:text",nbt:"message_prefix",interpret:true},{text:"Teleportation Settings Saved",color:"green"}]