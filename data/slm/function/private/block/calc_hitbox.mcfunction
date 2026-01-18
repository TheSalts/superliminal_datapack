# if $box hitbox.temp is 1 => loop

## check entity
    scoreboard players set #box hitbox.temp 1
    $execute anchored eyes positioned ^ ^ ^$(distance) run function slm:private/collision/get_aabb_raycast with storage slm:temp/distance_calc
    execute as @e[tag=!targetW,tag=AABB_check,distance=0..,type=block_display] run function slm:private/collision/calc_aabb_raycast
    execute if score #box hitbox.temp matches 0 run return 1

## check block
    scoreboard players set #box hitbox.temp 1
    $execute anchored eyes positioned ^ ^ ^$(distance) unless blocks ~-$(sizeX) ~-$(sizeY) ~-$(sizeZ) ~$(sizeX) ~$(sizeY) ~$(sizeZ) 0 200 0 masked run return run scoreboard players set #box hitbox.temp 0
