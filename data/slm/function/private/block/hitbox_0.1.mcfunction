data modify storage slm:temp/calc_ray x set from storage slm:temp/calc_ray_distance distance
data modify storage slm:temp/calc_ray y set value 0.1f
function gm:add with storage slm:temp/calc_ray
data modify storage slm:temp/calc_ray_distance distance set from storage gm:io out
function slm:private/distance/block_hitbox_distance