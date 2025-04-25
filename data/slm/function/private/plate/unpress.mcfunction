tag @s remove pressed
playsound block.metal_pressure_plate.click_off master @a ~ ~ ~ 1 1
data modify entity @s block_state set value {Name:"minecraft:light_weighted_pressure_plate"}
