tag @n[tag=target,type=block_display] add targetW
tag @n[tag=interaction,tag=!targetInteraction,tag=!clickDetect,type=interaction] add targetInteraction
execute as @e[tag=!targetW,tag=target,type=block_display,scores={isGravityOnGround=1}] run scoreboard players set @s hitbox.gravity 0
