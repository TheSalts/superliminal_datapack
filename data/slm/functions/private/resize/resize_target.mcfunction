function slm:private/resize/calc_size
execute store result storage slm:target_position positionX float 0.00001 run data get storage slm:target_localscale scaleX -50000
execute store result storage slm:target_position positionY float 0.00001 run data get storage slm:target_localscale scaleY -50000
execute store result storage slm:target_position positionZ float 0.00001 run data get storage slm:target_localscale scaleZ -50000


execute as @e[tag=targetW] run data modify entity @s transformation.scale[0] set from storage slm:target_localscale scaleX
execute as @e[tag=targetW] run data modify entity @s transformation.scale[1] set from storage slm:target_localscale scaleY
execute as @e[tag=targetW] run data modify entity @s transformation.scale[2] set from storage slm:target_localscale scaleZ
execute as @e[tag=targetW] run data modify entity @s transformation.translation[0] set from storage slm:target_position positionX
execute as @e[tag=targetW] run data modify entity @s transformation.translation[1] set from storage slm:target_position positionY
execute as @e[tag=targetW] run data modify entity @s transformation.translation[2] set from storage slm:target_position positionZ
function slm:private/resize/resize_target_interaction