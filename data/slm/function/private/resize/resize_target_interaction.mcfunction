execute as @e[tag=targetW,type=block_display] at @s store result storage slm:ti_height upper float 0.00001 run data get entity @s transformation.scale[1] 57500
execute as @e[tag=targetW,type=block_display] at @s store result storage slm:ti_height lower float 0.00001 run data get entity @s transformation.scale[1] -57500
execute as @e[tag=targetInteraction,type=interaction] at @s store result entity @s width float 0.00001 run data get entity @n[tag=target,type=block_display] transformation.scale[0] 110000
execute as @e[tag=targetInteraction,tag=upperInteraction,type=interaction] at @s run data modify entity @s height set from storage slm:ti_height upper
execute as @e[tag=targetInteraction,tag=lowerInteraction,type=interaction] at @s run data modify entity @s height set from storage slm:ti_height lower
