# cooldown
scoreboard players set @s lstp.charge_time -30

# fx
execute positioned ~ ~1 ~ run function lstp:fx/tp

# consume pearl
execute if items entity @s weapon.mainhand minecraft:ender_pearl run item modify entity @s weapon.mainhand lstp:remove_1
execute if items entity @s weapon.offhand minecraft:ender_pearl run item modify entity @s weapon.offhand lstp:remove_1

# store destination
execute if items entity @s weapon.mainhand *[minecraft:lodestone_tracker] run data modify storage lstp:temp macro set from entity @s SelectedItem.components."minecraft:lodestone_tracker".target
execute if items entity @s weapon.offhand *[minecraft:lodestone_tracker] run data modify storage lstp:temp macro set from entity @s equipment.offhand.components."minecraft:lodestone_tracker".target

data modify storage lstp:temp macro.x set from storage lstp:temp macro.pos[0]
data modify storage lstp:temp macro.y set from storage lstp:temp macro.pos[1]
data modify storage lstp:temp macro.z set from storage lstp:temp macro.pos[2]

# teleport
function lstp:tp/tp with storage lstp:temp macro

# fx
execute at @s positioned ~ ~1 ~ run function lstp:fx/tp