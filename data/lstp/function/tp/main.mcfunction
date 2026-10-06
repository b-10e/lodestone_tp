# store destination
execute \
    align xyz positioned ~0 ~0 ~0 \
    as @n[dx=0,dy=4,type=#lstp:item_frame,tag=!smithed.strict] \
        if items entity @s container.0 *[minecraft:lodestone_tracker] \
            run data modify storage lstp:temp compass set from entity @s Item.components
execute if items entity @s weapon.offhand *[minecraft:lodestone_tracker] run data modify storage lstp:temp compass set from entity @s equipment.offhand.components
execute if items entity @s weapon.mainhand *[minecraft:lodestone_tracker] run data modify storage lstp:temp compass set from entity @s SelectedItem.components

data modify storage lstp:temp macro.x set from storage lstp:temp compass."minecraft:lodestone_tracker".target.pos[0]
data modify storage lstp:temp macro.y set from storage lstp:temp compass."minecraft:lodestone_tracker".target.pos[1]
data modify storage lstp:temp macro.z set from storage lstp:temp compass."minecraft:lodestone_tracker".target.pos[2]
data modify storage lstp:temp macro.dimension set from storage lstp:temp compass."minecraft:lodestone_tracker".target.dimension

# dimension check
execute \
    if data storage lstp:config {allow_cross_dimensional_tp:false} \
    unless function lstp:tp/is_destination_dimension_same/main \
        run return run function lstp:tp/fail

# store destination name if applicable
execute as @s[tag=!lstp.settings.show_name.false] if data storage lstp:temp compass."minecraft:custom_name" run title @s title {storage:"lstp:temp",nbt:"compass.\"minecraft:custom_name\"",interpret:true}

# consume fuel
function lstp:tp/consume_fuel/main

# backwarp prevention
tag @s add lstp.backwarp_prevention

# fx
execute positioned ~ ~1 ~ run function lstp:fx/tp

# teleport
function lstp:tp/macro with storage lstp:temp macro

# fx
execute at @s positioned ~ ~1 ~ run function lstp:fx/tp