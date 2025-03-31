# teleport location
    execute if score $adjust hitbox.gravity matches 0 run tp @s ~ ~-0.05 ~

# hitbox detection
# entity
    scoreboard players set @s hitbox.gravity 0
    # get AABB
        $summon marker ~-$(sizeX) ~-$(sizeY) ~-$(sizeZ) {Tags:["AABB_min","AABB.gravity"]}
        $summon marker ~$(sizeX) ~$(sizeY) ~$(sizeZ) {Tags:["AABB_max","AABB.gravity"]}
        execute store result score @s AABB.min.x as @e[tag=AABB_min] run data get entity @s Pos[0] 1000000
        execute store result score @s AABB.min.y as @e[tag=AABB_min] run data get entity @s Pos[1] 1000000
        execute store result score @s AABB.min.z as @e[tag=AABB_min] run data get entity @s Pos[2] 1000000
        execute store result score @s AABB.max.x as @e[tag=AABB_max] run data get entity @s Pos[0] 1000000
        execute store result score @s AABB.max.y as @e[tag=AABB_max] run data get entity @s Pos[1] 1000000
        execute store result score @s AABB.max.z as @e[tag=AABB_max] run data get entity @s Pos[2] 1000000
        kill @e[tag=AABB.gravity,type=marker]

    execute as @e[tag=target,tag=!target.gravity,tag=AABB_check,type=block_display] at @s run function slm:private/collision/calc_aabb
    execute if score $AABB hitbox.gravity matches 1 run return run scoreboard players set @s hitbox.gravity 1

# block
    scoreboard players set @s hitbox.gravity 0
    $execute unless blocks ~-$(sizeX) ~-$(sizeY) ~-$(sizeZ) ~$(sizeX) ~$(sizeY) ~$(sizeZ) 0 255 0 masked run scoreboard players set @s hitbox.gravity 1

# Adjust position
    execute if score $adjust hitbox.gravity matches 1 if score @s hitbox.gravity matches 1 if function slm:private/gravity/adjust_position run return run scoreboard players set $adjust hitbox.gravity 0
    execute if score $adjust hitbox.gravity matches 0 if score @s hitbox.gravity matches 1 run tp @s ~ ~0.05 ~
    execute if score $adjust hitbox.gravity matches 0 if score @s hitbox.gravity matches 1 run scoreboard players set $adjust hitbox.gravity 1
    execute if score $adjust hitbox.gravity matches 1 run function slm:private/gravity/position_set
