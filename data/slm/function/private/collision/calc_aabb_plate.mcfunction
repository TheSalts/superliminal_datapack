scoreboard players set @s var 0
execute \ 
if score @s AABB.min.x <= @n[tag=temp.plate.AABB,type=block_display] AABB.max.x \
if score @s AABB.max.x >= @n[tag=temp.plate.AABB,type=block_display] AABB.min.x \
if score @s AABB.min.y <= @n[tag=temp.plate.AABB,type=block_display] AABB.max.y \
if score @s AABB.max.y >= @n[tag=temp.plate.AABB,type=block_display] AABB.min.y \
if score @s AABB.min.z <= @n[tag=temp.plate.AABB,type=block_display] AABB.max.z \
if score @s AABB.max.z >= @n[tag=temp.plate.AABB,type=block_display] AABB.min.z run return run scoreboard players set @s var 1
