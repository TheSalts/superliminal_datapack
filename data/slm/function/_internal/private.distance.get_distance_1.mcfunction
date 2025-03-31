execute if entity @s[tag=small.target] as @n[tag=collision,tag=small,type=block_display] at @s run function slm:private/interaction/kill_shulker
execute if entity @s[tag=!small.target] as @e[tag=collision,tag=!small,limit=8,sort=nearest,type=block_display] at @s run function slm:private/interaction/kill_shulker
