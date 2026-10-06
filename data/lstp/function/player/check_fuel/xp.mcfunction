execute if data storage lstp:config {allow_xp_fuel:true} store result score #lstp.level_count lstp.int run xp query @s levels
execute if data storage lstp:config {allow_xp_fuel:true} if score #lstp.level_count lstp.int >= #lstp.fuel_level_count lstp.config run return 1

return fail