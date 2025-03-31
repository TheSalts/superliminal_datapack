function slm:private/temp/original_target_scale
execute as @e[tag=targetW,type=block_display] at @s run function slm:_internal/private.distance.get_distance_3
tag @e[tag=targetW,type=block_display] remove targetW
tag @e[tag=targetInteraction,type=interaction] remove targetInteraction
scoreboard players set @s leftclicked 0
