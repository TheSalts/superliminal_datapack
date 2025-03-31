$execute as @e[tag=ratioCalc,type=item_display] run data modify entity @s transformation set value [$(b)f,0f,0f,0f, 0f,0f,0f,0f, 0f,0f,0f,0f, 0f,0f,0f,$(a)f]
execute as @e[tag=ratioCalc,type=item_display] run data modify storage slm:target_ratio ratio set from entity @s transformation.scale[0]
execute as @e[tag=ratioCalc,type=item_display] run data modify storage slm:target_scale scale set from entity @s transformation.scale[0]
