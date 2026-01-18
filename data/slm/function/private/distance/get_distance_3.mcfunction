function slm:private/var/original_target_scale
execute as @e[tag=targetW,distance=0..,type=block_display] at @s run function slm:_internal/private/distance/_get_distance_3
tag @e[tag=targetW,distance=0..,type=block_display] remove targetW
tag @e[tag=targetInteraction,distance=0..,type=interaction] remove targetInteraction
scoreboard players set @s leftclicked 0
