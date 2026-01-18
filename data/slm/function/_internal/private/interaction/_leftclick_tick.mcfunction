data merge entity @n[tag=target,distance=0..,type=block_display] {teleport_duration:1, interpolation_duration:1}
tag @n[tag=target,distance=0..,type=block_display] remove stable

tag @n[tag=target,distance=0..,type=block_display] add targetW
tag @n[tag=interaction,tag=!targetInteraction,tag=!clickDetect,distance=0..,type=interaction] add targetInteraction
execute as @e[tag=!targetW,tag=target,scores={isGravityOnGround=1},distance=0..,type=block_display] run scoreboard players set @s hitbox.gravity 0
 