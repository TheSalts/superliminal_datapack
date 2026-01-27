function slm:private/resize/calc_size
execute store result score #scale.minSize var run data get storage slm:target_localscale scaleX 100000
execute if score #scale.minSize var matches ..6250 run data merge storage slm:target_localscale {scaleX:0.0625f, scaleY:0.0625f, scaleZ:0.0625f}
execute store result storage slm:target_position positionX float 0.00001 run data get storage slm:target_localscale scaleX -50000
execute store result storage slm:target_position positionY float 0.00001 run data get storage slm:target_localscale scaleY -50000
execute store result storage slm:target_position positionZ float 0.00001 run data get storage slm:target_localscale scaleZ -50000


execute as @n[tag=targetW,distance=0..,type=block_display] run function slm:_internal/private/resize/_resize_target
function slm:private/resize/resize_target_interaction
