execute as @e[tag=targetW,type=block_display] run data modify storage slm:original_scale scaleX set from entity @s transformation.scale[0]
execute as @e[tag=targetW,type=block_display] run data modify storage slm:original_scale scaleY set from entity @s transformation.scale[1]
execute as @e[tag=targetW,type=block_display] run data modify storage slm:original_scale scaleZ set from entity @s transformation.scale[2]
