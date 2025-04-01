execute store result score $distance hitbox.temp run data get storage slm:temp/calc_ray_distance distance 1

data modify storage slm:ratio_input b set from storage slm:temp/calc_ray_distance distance

execute as @e[tag=ratioCalc,type=item_display] run function slm:private/math/ratio with storage slm:ratio_input

function slm:private/math/multiply_scale

execute store result storage slm:temp/distance_calc sizeX float 0.00001 run data get storage slm:target_localscale scaleX 50000
execute store result storage slm:temp/distance_calc sizeY float 0.00001 run data get storage slm:target_localscale scaleY 50000
execute store result storage slm:temp/distance_calc sizeZ float 0.00001 run data get storage slm:target_localscale scaleZ 50000
data modify storage slm:temp/distance_calc distance set from storage slm:temp/calc_ray_distance distance
