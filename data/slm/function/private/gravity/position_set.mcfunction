# teleport location

tp @s ~ ~-0.05 ~

# hitbox detection

function slm:private/block/detect_hitbox with storage slm:temp/gravity/size

# Adjust position

execute if score @s hitbox.gravity matches 1 run return run function slm:_internal/private/gravity/_position_set
