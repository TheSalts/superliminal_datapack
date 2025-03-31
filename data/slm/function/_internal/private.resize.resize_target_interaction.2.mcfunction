execute store result entity @s width float 0.00001 run data get entity @n[tag=target,type=block_display] transformation.scale[0] 110000
execute if entity @s[tag=upperInteraction] run data modify entity @s height set from storage slm:ti_height upper
execute if entity @s[tag=lowerInteraction] run data modify entity @s height set from storage slm:ti_height lower
