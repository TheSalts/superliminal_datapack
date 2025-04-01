execute if score $distance hitbox.temp matches 21 as @e[tag=targetW,type=block_display] at @s if entity @n[tag=has_hitbox,distance=..9.5,tag=!targetInteraction,tag=!targetW]

## calc_size

execute store result score $distance hitbox.temp run data get storage slm:temp/calc_ray_distance distance 1

data modify storage slm:ratio_input b set from storage slm:temp/calc_ray_distance distance

execute as @e[tag=ratioCalc,type=item_display] run function slm:private/math/ratio with storage slm:ratio_input

function slm:private/math/multiply_scale

execute store result storage slm:temp/distance_calc sizeX float 0.00001 run data get storage slm:target_localscale scaleX 50000
execute store result storage slm:temp/distance_calc sizeY float 0.00001 run data get storage slm:target_localscale scaleY 50000
execute store result storage slm:temp/distance_calc sizeZ float 0.00001 run data get storage slm:target_localscale scaleZ 50000
data modify storage slm:temp/distance_calc distance set from storage slm:temp/calc_ray_distance distance

## loop

function slm:private/block/calc_hitbox with storage slm:temp/distance_calc
execute if score $box hitbox.temp matches 1 if score $set hitbox.temp matches 0 if score $distance hitbox.temp matches ..20 run return run function slm:private/block/hitbox_0.5
execute if score $box hitbox.temp matches 1 if score $set hitbox.temp matches 1 if score $distance hitbox.temp matches ..20 run return run function slm:private/block/hitbox_0.1
execute if score $set hitbox.temp matches 0 run return run function slm:private/block/set0

## catch

data modify storage slm:temp/calc_ray x set from storage slm:temp/calc_ray_distance distance
data modify storage slm:temp/calc_ray y set value 0.1f
function gm:subtract with storage slm:temp/calc_ray
data modify storage slm:temp/calc_ray_distance distance set from storage gm:io out

data modify storage slm:ray_distance distance set from storage slm:temp/calc_ray_distance distance
function slm:private/catch/catch with storage slm:ray_distance
scoreboard players set $box hitbox.temp 0
scoreboard players set $set hitbox.temp 0
data modify storage slm:temp/calc_ray_distance distance set value 0

## resize

execute unless function slm:private/distance/check_too_small run function slm:private/resize/resize_target
