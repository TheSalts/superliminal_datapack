execute as @e[tag=shulker.gravity] at @s if entity @e[type=shulker,tag=!shulker.gravity,dx=0] run return run scoreboard players set @e[tag=target,limit=1,sort=nearest] hitbox.gravity 1
$execute unless blocks ~-$(sizeX) ~-$(sizeY) ~-$(sizeZ) ~$(sizeX) ~$(sizeY) ~$(sizeZ) 0 0 0 masked run return run scoreboard players set @s hitbox.gravity 1
scoreboard players set @s hitbox.gravity 0