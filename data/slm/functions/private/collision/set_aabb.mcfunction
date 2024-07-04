execute store result storage slm/temp/aabb_scale sizeX double 0.00001 run data get entity @s transformation.scale[0] 50000
execute store result storage slm/temp/aabb_scale sizeY double 0.00001 run data get entity @s transformation.scale[1] 50000
execute store result storage slm/temp/aabb_scale sizeZ double 0.00001 run data get entity @s transformation.scale[2] 50000
function slm:private/collision/get_aabb with storage slm/temp/aabb_scale
