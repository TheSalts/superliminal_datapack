tag @s add pressed
playsound block.metal_pressure_plate.click_on master @a ~ ~ ~ 1 1
data modify entity @s block_state.Properties set value {power:"1"}
