function slm:private/distance/set_pos
function slm:private/distance/calc_distance_pos with storage slm:pos
data modify storage slm:ratio_input a set from storage slm:original_distance distance
function slm:private/resize/original_scale
data modify storage slm:target_scale scale set from storage slm:original_scale
execute as @e[tag=targetW,type=block_display] at @s run function slm:_internal/private/distance/_get_distance_1
scoreboard players add @s leftclicked 1
