# teleport location

tp @s ~ ~-0.01 ~

# hitbox detection

function slm:private/block/detect_hitbox with storage slm:temp/gravity/size

# Adjust position

execute if score @s hitbox.gravity matches 1 run tp @s ~ ~0.01 ~
execute if score @s hitbox.gravity matches 1 run return 1
execute if score @s hitbox.gravity matches 0 run function slm:private/gravity/position_set_0.01
