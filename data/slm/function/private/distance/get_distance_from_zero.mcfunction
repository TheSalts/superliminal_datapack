$execute as @e[tag=distanceCalc] run data modify entity @s transformation set value [$(x)f,0f,0f,0f,$(y)f,0f,0f,0f,$(z)f,0f,0f,0f,0f,0f,0f,1f]
data modify storage slm:original_distance distance set from entity @e[tag=distanceCalc,limit=1,type=item_display] transformation.scale[0]
