data modify storage slm:collision/small/size scale set from entity @s transformation.scale[0]
execute store result storage slm:collision/small/size scale_half double 0.00001 run data get entity @s transformation.scale[0] 50000
execute unless entity @e[tag=temp_collision] run tag @e[tag=collision,tag=small,limit=1,sort=nearest] add temp_collision

function slm:private/collision/small.position with storage slm:collision/small/size
