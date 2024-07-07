function slm:private/distance/set_pos
function slm:private/distance/calc_distance_pos with storage slm:pos
data modify storage slm:ratio_input a set from storage slm:original_distance distance
function slm:private/resize/original_scale
data modify storage slm:target_scale scale set from storage slm:original_scale
execute as @e[tag=targetW,tag=small.target,type=block_display] at @s as @e[tag=collision,tag=small,limit=1,sort=nearest,type=block_display] at @s run function slm:private/interaction/kill_shulker
execute as @e[tag=targetW,tag=!small.target,type=block_display] at @s as @e[tag=collision,tag=!small,limit=8,sort=nearest,type=block_display] at @s run function slm:private/interaction/kill_shulker
scoreboard players add @s leftclicked 1
