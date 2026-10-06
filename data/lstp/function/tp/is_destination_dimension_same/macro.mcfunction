tag @s add lstp.this
$execute in $(dimension) positioned $(x) $(y) $(z) if entity @p[tag=lstp.this,distance=0..] run return run tag @s remove lstp.this
tag @s remove lstp.this
return fail