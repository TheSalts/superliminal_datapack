execute as @e[tag=targetW] at @s store result storage slm:ti_height upper float 0.00001 run data get entity @s transformation.scale[1] 57500
execute as @e[tag=targetW] at @s store result storage slm:ti_height lower float 0.00001 run data get entity @s transformation.scale[1] -57500
execute as @e[tag=targetInteraction] at @s store result entity @s width float 0.00001 run data get entity @e[tag=target,limit=1,sort=nearest] transformation.scale[0] 110000
execute as @e[tag=targetInteraction,tag=upperInteraction] at @s run data modify entity @s height set from storage slm:ti_height upper
execute as @e[tag=targetInteraction,tag=lowerInteraction] at @s run data modify entity @s height set from storage slm:ti_height lower