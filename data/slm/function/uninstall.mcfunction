scoreboard objectives remove math.plus 
scoreboard objectives remove math.minus 
scoreboard objectives remove math.int 
scoreboard objectives remove const 
scoreboard objectives remove leftclicked 
scoreboard objectives remove rightclicked 
scoreboard objectives remove raycast 
scoreboard objectives remove leftclick.delay 
scoreboard objectives remove wait 
scoreboard objectives remove hitbox.temp 
scoreboard objectives remove hitbox.pos 
scoreboard objectives remove hitbox.gravity 
scoreboard players remove @a[tag=player] raycast 0
scoreboard players remove @a leftclicked 0
scoreboard players remove @a rightclicked 0
scoreboard players set zero const 0
scoreboard objectives remove size.min 
scoreboard objectives remove shulker.size.min 
scoreboard objectives remove gravity_acceration 
scoreboard objectives remove gravity 
scoreboard objectives remove AABB.min.x 
scoreboard objectives remove AABB.min.y 
scoreboard objectives remove AABB.min.z 
scoreboard objectives remove AABB.max.x 
scoreboard objectives remove AABB.max.y 
scoreboard objectives remove AABB.max.z 
kill @e[tag=ratioCalc]
kill @e[tag=distanceCalc]
forceload remove 0 0
kill @e[tag=target]
kill @e[tag=interaction]
kill @e[tag=AABB_max]
kill @e[tag=AABB_min]
kill @e[tag=collision_shulker]
