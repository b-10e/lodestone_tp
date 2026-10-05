# calculate how many charges the player has
scoreboard players operation #lstp.charges lstp.int = @s lstp.charge_time
scoreboard players operation #lstp.charges lstp.int /= #lstp.charge_interval lstp.config
execute unless score #lstp.charges lstp.int matches 0.. run scoreboard players set #lstp.charges lstp.int 0

# calculate sound pitch
scoreboard players operation #lstp.pitch lstp.int = #lstp.charges lstp.int
scoreboard players operation #lstp.pitch lstp.int *= #lstp.pitch_multiplier lstp.const
scoreboard players add #lstp.pitch lstp.int 5
execute store result storage lstp:temp macro.pitch float 0.1 run scoreboard players get #lstp.pitch lstp.int

# calculate fov decrease
scoreboard players set #lstp.fov lstp.int -1
scoreboard players operation #lstp.fov lstp.int *= #lstp.charges lstp.int
scoreboard players operation #lstp.fov lstp.int *= #lstp.fov_multiplier lstp.const
execute store result storage lstp:temp macro.fov float 0.01 run scoreboard players get #lstp.fov lstp.int

# fx
particle dust_color_transition{from_color:[0.2,0.0,0.2],to_color:[1,1,1],scale:0.8} ~ ~ ~ 1 1 1 0.1 32
attribute @s movement_speed modifier remove lstp:fov
function lstp:fx/charge_macro with storage lstp:temp macro
