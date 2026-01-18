execute as @s[tag=!targetW] unless score @s hitbox.gravity matches 0..1 run scoreboard players add @s hitbox.gravity 0

execute as @e[tag=targetW,distance=0..,type=block_display] run data merge entity @s {interpolation_duration:1}
execute as @e[tag=!targetW,tag=target,distance=0..,type=block_display] run data merge entity @s {interpolation_duration:0}

execute as @s[tag=!targetW,scores={hitbox.gravity=0}] run function slm:private/gravity/gravity
execute as @s[tag=!targetW,tag=!sparkle] run data modify entity @s Glowing set value false
execute as @s[tag=targetW] run scoreboard players set @s hitbox.gravity 0
execute if entity @s[tag=small.target,scores={hitbox.gravity=1},distance=0..] as @n[tag=collision_shulker,tag=small,distance=0..,type=shulker] run tag @s remove shulker.gravity
execute if entity @s[tag=!small.target,scores={hitbox.gravity=1},distance=0..] as @e[tag=collision_shulker,limit=8,sort=nearest,distance=0..,type=shulker] run tag @s remove shulker.gravity
