tp @e[tag=collision,tag=!small,limit=8,sort=nearest,type=block_display] @s
$execute as @e[tag=collision,tag=!small,limit=8,sort=nearest,type=block_display] at @s run function slm:_internal/private.collision.position {scale_quarter:$(scale_quarter), scale_half:$(scale_half)}
