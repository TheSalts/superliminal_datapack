scoreboard players set $AABB hitbox.gravity 0
execute \ 
if score @s AABB.min.x <= @e[tag=target.gravity,limit=1,sort=nearest,type=block_display] AABB.max.x \
if score @s AABB.max.x >= @e[tag=target.gravity,limit=1,sort=nearest,type=block_display] AABB.min.x \
if score @s AABB.min.y <= @e[tag=target.gravity,limit=1,sort=nearest,type=block_display] AABB.max.y \
if score @s AABB.max.y >= @e[tag=target.gravity,limit=1,sort=nearest,type=block_display] AABB.min.y \
if score @s AABB.min.z <= @e[tag=target.gravity,limit=1,sort=nearest,type=block_display] AABB.max.z \
if score @s AABB.max.z >= @e[tag=target.gravity,limit=1,sort=nearest,type=block_display] AABB.min.z run scoreboard players set $AABB hitbox.gravity 1
