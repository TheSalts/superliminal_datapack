$summon marker ~-$(sizeX) ~-$(sizeY) ~-$(sizeZ) {Tags:["AABB_min"]}
$summon marker ~$(sizeX) ~$(sizeY) ~$(sizeZ) {Tags:["AABB_max"]}
execute store result score @s AABB.min.x as @n[tag=AABB_min,type=marker] run data get entity @s Pos[0] 1000000
execute store result score @s AABB.min.y as @n[tag=AABB_min,type=marker] run data get entity @s Pos[1] 1000000
execute store result score @s AABB.min.z as @n[tag=AABB_min,type=marker] run data get entity @s Pos[2] 1000000
execute store result score @s AABB.max.x as @n[tag=AABB_max,type=marker] run data get entity @s Pos[0] 1000000
execute store result score @s AABB.max.y as @n[tag=AABB_max,type=marker] run data get entity @s Pos[1] 1000000
execute store result score @s AABB.max.z as @n[tag=AABB_max,type=marker] run data get entity @s Pos[2] 1000000
kill @n[tag=AABB_min,type=marker]
kill @n[tag=AABB_max,type=marker]
tag @s add AABB_check
