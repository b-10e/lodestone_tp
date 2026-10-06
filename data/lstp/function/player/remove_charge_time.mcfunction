# backwarp prevention check
execute if predicate lstp:on_ground run tag @s remove lstp.cannot_remove_backwarp_prevention
execute unless predicate lstp:on_lodestone run tag @s[tag=!lstp.cannot_remove_backwarp_prevention] remove lstp.backwarp_prevention

# move charge time towards 0
scoreboard players set @s lstp.charge_time 0

# remove fov effect
attribute @s movement_speed modifier remove lstp:fov