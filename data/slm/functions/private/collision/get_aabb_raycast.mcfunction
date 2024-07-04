$summon marker ~-$(sizeX) ~-$(sizeY) ~-$(sizeZ) {Tags:["AABB_min"]}
$summon marker ~$(sizeX) ~$(sizeY) ~$(sizeZ) {Tags:["AABB_max"]}
execute store result score $AABB AABB.min.x as @e[tag=AABB_min] run data get entity @s Pos[0] 100000
execute store result score $AABB AABB.min.y as @e[tag=AABB_min] run data get entity @s Pos[1] 100000
execute store result score $AABB AABB.min.z as @e[tag=AABB_min] run data get entity @s Pos[2] 100000
execute store result score $AABB AABB.max.x as @e[tag=AABB_max] run data get entity @s Pos[0] 100000
execute store result score $AABB AABB.max.y as @e[tag=AABB_max] run data get entity @s Pos[1] 100000
execute store result score $AABB AABB.max.z as @e[tag=AABB_max] run data get entity @s Pos[2] 100000 
kill @e[tag=AABB_min]
kill @e[tag=AABB_max]
