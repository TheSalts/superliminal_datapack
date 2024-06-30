function slm:private/temp/original_target_scale
execute as @e[tag=targetW] at @s if function slm:private/distance/check_too_small run function slm:private/resize/set_size_to_0.1
execute as @e[tag=targetW] at @s run function slm:private/collision/shulker_other_place
tag @e[tag=targetW] remove targetW
tag @e[tag=targetInteraction] remove targetInteraction
scoreboard players set @s leftclicked 0
tp @e[tag=hitboxCalc] 0 0 0