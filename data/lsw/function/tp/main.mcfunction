scoreboard players set @s lsw.charge_time -20

# fx
execute positioned ~ ~1 ~ run function lsw:fx/tp

# consume pearl
execute if items entity @s weapon.mainhand minecraft:ender_pearl run item modify entity @s weapon.mainhand lsw:remove_1
execute if items entity @s weapon.offhand minecraft:ender_pearl run item modify entity @s weapon.offhand lsw:remove_1

# store destination
execute if items entity @s weapon.mainhand minecraft:compass[minecraft:lodestone_tracker] run data modify storage lsw:temp macro set from entity @s SelectedItem.components."minecraft:lodestone_tracker".target
execute if items entity @s weapon.offhand minecraft:compass[minecraft:lodestone_tracker] run data modify storage lsw:temp macro set from entity @s equipment.offhand.components."minecraft:lodestone_tracker".target

data modify storage lsw:temp macro.x set from storage lsw:temp macro.pos[0]
data modify storage lsw:temp macro.y set from storage lsw:temp macro.pos[1]
data modify storage lsw:temp macro.z set from storage lsw:temp macro.pos[2]

# teleport
function lsw:tp/tp with storage lsw:temp macro

# fx
execute at @s positioned ~ ~1 ~ run function lsw:fx/tp