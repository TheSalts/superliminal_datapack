execute store result storage slm:collision/size scale_half double 0.00001 run data get entity @s transformation.scale[0] 50000
execute store result storage slm:collision/size scale_quarter double 0.00001 run data get entity @s transformation.scale[0] 25000
execute store result storage slm:collision/size scale_half_quarter double 0.00001 run data get entity @s transformation.scale[0] 12500
function slm:private/collision/position with storage slm:collision/size