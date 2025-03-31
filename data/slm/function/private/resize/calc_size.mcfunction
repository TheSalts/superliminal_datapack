data modify storage slm:ratio_input b set from storage slm:ray_distance distance
execute as @e[tag=ratioCalc,type=item_display] run function slm:private/math/ratio with storage slm:ratio_input
function slm:private/math/multiply_scale
