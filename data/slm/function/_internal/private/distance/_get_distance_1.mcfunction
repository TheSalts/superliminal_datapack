execute if entity @s[tag=small.target,distance=0..] as @n[tag=collision,tag=small,distance=0..,type=block_display] at @s run function slm:private/interaction/kill_shulker
execute if entity @s[tag=!small.target,distance=0..] as @e[tag=collision,tag=!small,limit=8,sort=nearest,distance=0..,type=block_display] at @s run function slm:private/interaction/kill_shulker
