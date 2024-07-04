$summon marker ~-$(sizeX) ~-$(sizeY) ~-$(sizeZ) {Tags:["AABB_min"]}
$summon marker ~$(sizeX) ~$(sizeY) ~$(sizeZ) {Tags:["AABB_max"]}
execute store result score @s AABB.min.x as @e[tag=AABB_min,type=marker,limit=1,sort=nearest] run data get entity @s Pos[0] 100000
execute store result score @s AABB.min.y as @e[tag=AABB_min,type=marker,limit=1,sort=nearest] run data get entity @s Pos[1] 100000
execute store result score @s AABB.min.z as @e[tag=AABB_min,type=marker,limit=1,sort=nearest] run data get entity @s Pos[2] 100000
execute store result score @s AABB.max.x as @e[tag=AABB_max,type=marker,limit=1,sort=nearest] run data get entity @s Pos[0] 100000
execute store result score @s AABB.max.y as @e[tag=AABB_max,type=marker,limit=1,sort=nearest] run data get entity @s Pos[1] 100000
execute store result score @s AABB.max.z as @e[tag=AABB_max,type=marker,limit=1,sort=nearest] run data get entity @s Pos[2] 100000
kill @e[tag=AABB_min,limit=1,sort=nearest,type=marker]
kill @e[tag=AABB_max,limit=1,sort=nearest,type=marker]
tag @s add AABB_check
