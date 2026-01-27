tag @e[distance=..3,tag=!targetW,tag=target,type=block_display] add temp.plate.AABB
execute unless entity @e[distance=..3,tag=temp.plate.AABB,type=block_display] run scoreboard players set @s var 0
function slm:private/collision/calc_aabb_plate
execute if score @s var matches 1 run tag @n[distance=0..,tag=temp.plate.AABB,type=block_display] add hit
execute if entity @a[tag=can_plate,distance=...7] run scoreboard players set @s var 2
