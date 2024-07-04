# teleport location
    tp @s ~ ~-0.05 ~

# hitbox detection
# entity
    scoreboard players set @s hitbox.gravity 0
    # get AABB
        $summon marker ~-$(sizeX) ~-$(sizeY) ~-$(sizeZ) {Tags:["AABB_min","AABB.gravity"]}
        $summon marker ~$(sizeX) ~$(sizeY) ~$(sizeZ) {Tags:["AABB_max","AABB.gravity"]}
        execute store result score @s AABB.min.x as @e[tag=AABB_min] run data get entity @s Pos[0] 100000
        execute store result score @s AABB.min.y as @e[tag=AABB_min] run data get entity @s Pos[1] 100000
        execute store result score @s AABB.min.z as @e[tag=AABB_min] run data get entity @s Pos[2] 100000
        execute store result score @s AABB.max.x as @e[tag=AABB_max] run data get entity @s Pos[0] 100000
        execute store result score @s AABB.max.y as @e[tag=AABB_max] run data get entity @s Pos[1] 100000
        execute store result score @s AABB.max.z as @e[tag=AABB_max] run data get entity @s Pos[2] 100000 
        kill @e[tag=AABB.gravity]

    execute as @e[tag=target,tag=!target.gravity,tag=AABB_check,type=block_display] at @s run function slm:private/collision/calc_aabb
    execute if score @s hitbox.gravity matches 1 run return run say 1

# block
    scoreboard players set @s hitbox.gravity 0
    $execute unless blocks ~-$(sizeX) ~-$(sizeY) ~-$(sizeZ) ~$(sizeX) ~$(sizeY) ~$(sizeZ) 0 0 0 masked run scoreboard players set @s hitbox.gravity 1
    execute if score @s hitbox.gravity matches 1 run return run tp @s ~ ~0.025 ~
