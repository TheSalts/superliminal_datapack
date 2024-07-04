$summon marker ~-$(sizeX) ~-$(sizeY) ~-$(sizeZ) {Tags:["AABB_min"]}
$summon marker ~$(sizeX) ~$(sizeY) ~$(sizeZ) {Tags:["AABB_max"]}
execute store result score $AABB AABB.min.x as @e[tag=AABB_min,type=marker,limit=1,sort=nearest] run data get entity @s Pos[0] 1000000
execute store result score $AABB AABB.min.y as @e[tag=AABB_min,type=marker,limit=1,sort=nearest] run data get entity @s Pos[1] 1000000
execute store result score $AABB AABB.min.z as @e[tag=AABB_min,type=marker,limit=1,sort=nearest] run data get entity @s Pos[2] 1000000
execute store result score $AABB AABB.max.x as @e[tag=AABB_max,type=marker,limit=1,sort=nearest] run data get entity @s Pos[0] 1000000
execute store result score $AABB AABB.max.y as @e[tag=AABB_max,type=marker,limit=1,sort=nearest] run data get entity @s Pos[1] 1000000
execute store result score $AABB AABB.max.z as @e[tag=AABB_max,type=marker,limit=1,sort=nearest] run data get entity @s Pos[2] 1000000
kill @e[tag=AABB_min,type=marker,limit=1,sort=nearest]
kill @e[tag=AABB_max,type=marker,limit=1,sort=nearest]
