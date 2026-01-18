data modify storage slm:calc_distance list set value [0f,0f,0f,0f, 0f,0f,0f,0f, 0f,0f,0f,0f, 0f,0f,0f,1f]
data modify storage slm:calc_distance list[0] set from storage slm:calcpos x
data modify storage slm:calc_distance list[4] set from storage slm:calcpos y
data modify storage slm:calc_distance list[8] set from storage slm:calcpos z

data modify entity 00000000-0000-0000-0000-000000000001 transformation set from storage slm:calc_distance list


data modify storage slm:original_distance distance set from entity 00000000-0000-0000-0000-000000000001 transformation.scale[0]
