execute align xyz run summon block_display ~0.5 ~ ~0.5 {block_state:{Name:"heavy_weighted_pressure_plate"}, Tags:["plate","weight","temp"]}
execute as @e[tag=temp,tag=plate,type=block_display] run data modify entity @s transformation.translation set value [-0.5f, 0f, -0.5f]
execute as @e[tag=temp,tag=plate,type=block_display] run function slm:private/collision/get_aabb {sizeX:0.5, sizeY:0.1, sizeZ:0.5}
tag @e[tag=temp,tag=plate,type=block_display] remove temp
