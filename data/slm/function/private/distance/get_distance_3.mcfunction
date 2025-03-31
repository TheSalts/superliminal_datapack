function slm:private/temp/original_target_scale
execute as @e[tag=targetW,type=block_display] at @s if function slm:private/distance/check_too_small run function slm:private/resize/set_size_to_0.1
execute as @e[tag=targetW,type=block_display] at @s run function slm:private/collision/shulker_other_place
tag @e[tag=targetW,type=block_display] remove targetW
tag @e[tag=targetInteraction,type=interaction] remove targetInteraction
scoreboard players set @s leftclicked 0
