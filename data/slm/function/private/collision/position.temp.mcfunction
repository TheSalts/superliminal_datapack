tp @e[tag=collision,tag=temp_collision,tag=!small,limit=8,sort=nearest,distance=0..,type=block_display] @s
$execute as @e[tag=temp_collision,tag=!small,limit=8,sort=nearest,distance=0..,type=block_display] at @s run function slm:_internal/private/collision/_position.temp {scale_quarter:$(scale_quarter), scale_half:$(scale_half)}
tag @e[tag=temp_collision,distance=0..,type=block_display] remove temp_collision
