execute as @e[tag=targetW] run data modify entity @s transformation.scale[0] set value 0.05d
execute as @e[tag=targetW] run data modify entity @s transformation.scale[1] set value 0.05d
execute as @e[tag=targetW] run data modify entity @s transformation.scale[2] set value 0.05d
execute as @e[tag=targetW] run data modify entity @s transformation.translation[0] set value -0.025d
execute as @e[tag=targetW] run data modify entity @s transformation.translation[1] set value -0.025d
execute as @e[tag=targetW] run data modify entity @s transformation.translation[2] set value -0.025d
function slm:private/resize/resize_target_interaction