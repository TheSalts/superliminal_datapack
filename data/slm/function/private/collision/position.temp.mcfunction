tp @e[tag=collision,tag=temp_collision,tag=!small,limit=8,sort=nearest,type=block_display] @s
$execute as @e[tag=temp_collision,tag=!small,limit=8,sort=nearest,type=block_display] at @s run function slm:_internal/private/collision/_position.temp {scale_quarter:$(scale_quarter), scale_half:$(scale_half)}
tag @e[type=block_display,tag=temp_collision] remove temp_collision
