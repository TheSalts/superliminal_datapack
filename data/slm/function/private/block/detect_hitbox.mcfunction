# entity
    scoreboard players set @s hitbox.gravity 0
    # get AABB
        $summon marker ~-$(sizeX) ~-$(sizeY) ~-$(sizeZ) {Tags:["AABB_min","AABB.gravity"]}
        $summon marker ~$(sizeX) ~$(sizeY) ~$(sizeZ) {Tags:["AABB_max","AABB.gravity"]}
        execute store result score @s AABB.min.x as @n[tag=AABB_min,type=marker] run data get entity @s Pos[0] 1000000
        execute store result score @s AABB.min.y as @n[tag=AABB_min,type=marker] run data get entity @s Pos[1] 1000000
        execute store result score @s AABB.min.z as @n[tag=AABB_min,type=marker] run data get entity @s Pos[2] 1000000
        execute store result score @s AABB.max.x as @n[tag=AABB_max,type=marker] run data get entity @s Pos[0] 1000000
        execute store result score @s AABB.max.y as @n[tag=AABB_max,type=marker] run data get entity @s Pos[1] 1000000
        execute store result score @s AABB.max.z as @n[tag=AABB_max,type=marker] run data get entity @s Pos[2] 1000000
        tag @s add temp.gravity
        kill @e[tag=AABB.gravity,type=marker]

    execute as @e[tag=target,tag=!temp.gravity,tag=AABB_check,type=block_display] at @s run function slm:private/collision/calc_aabb
    scoreboard players set @s hitbox.gravity 0
    tag @s remove temp.gravity
    execute if score $AABB hitbox.gravity matches 1 run scoreboard players set @s hitbox.gravity 1


# block
    $execute if score @s hitbox.gravity matches 0 unless blocks ~-$(sizeX) ~-$(sizeY) ~-$(sizeZ) ~$(sizeX) ~$(sizeY) ~$(sizeZ) 0 255 0 masked run scoreboard players set @s hitbox.gravity 1
