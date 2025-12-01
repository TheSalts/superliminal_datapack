execute \ 
if score @s AABB.min.x <= #AABB AABB.max.x \
if score @s AABB.max.x >= #AABB AABB.min.x \
if score @s AABB.min.y <= #AABB AABB.max.y \
if score @s AABB.max.y >= #AABB AABB.min.y \
if score @s AABB.min.z <= #AABB AABB.max.z \
if score @s AABB.max.z >= #AABB AABB.min.z run scoreboard players set #box hitbox.temp 0
