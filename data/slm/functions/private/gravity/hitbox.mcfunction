data modify entity @e[tag=hitboxCalc,limit=1] width set from entity @s transformation.scale[0]
data modify entity @e[tag=hitboxCalc,limit=1] height set from entity @s transformation.scale[1]
$tp @e[tag=hitboxCalc] ~ ~-$(sizeY) ~
scoreboard players set @s hitbox.gravity 0
execute at @e[tag=hitboxCalc] if entity @e[tag=has_hitbox,tag=!shulker.gravity,dy=0] run return run scoreboard players set @s hitbox.gravity 1

scoreboard players set @s hitbox.gravity 0
$execute unless blocks ~-$(sizeX) ~-$(sizeY) ~-$(sizeZ) ~$(sizeX) ~$(sizeY) ~$(sizeZ) 0 0 0 masked run return run scoreboard players set @s hitbox.gravity 1
