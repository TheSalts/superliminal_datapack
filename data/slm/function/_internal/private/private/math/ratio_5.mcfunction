data modify entity @s transformation set from storage slm:calc_ratio list
# data modify storage slm:target_ratio ratio set from entity @s transformation.scale[0]

data modify storage slm:target_scale scale set from entity @s transformation.scale[0]
