execute if entity @e[x=0,tag=targetW,type=block_display] run tag @e[tag=wall,distance=0..,type=item_display] add close_by_target
execute unless entity @e[x=0,tag=targetW,type=block_display] run tag @e[tag=wall,distance=0..,type=item_display] remove close_by_target
execute as @e[tag=open,tag=!close,tag=!close_by_target,tag=!3x3,tag=wall,x=0,type=item_display] at @s unless block ~ ~ ~ tall_grass run fill ~ ~ ~ ~ ~1 ~ tall_grass strict
execute as @e[tag=open,tag=!close,tag=!close_by_target,tag=3x3,tag=wall,x=0,type=item_display] at @s unless block ~ ~ ~ tall_grass run fill ~ ~ ~-1 ~ ~2 ~1 tall_grass strict
execute as @e[tag=close,tag=wall,x=0,type=item_display] at @s unless block ~ ~ ~ tinted_glass run fill ~ ~ ~ ~ ~1 ~ tinted_glass strict
execute as @e[tag=close_by_target,tag=wall,tag=!3x3,x=0,type=item_display] at @s unless block ~ ~ ~ tinted_glass run fill ~ ~ ~ ~ ~1 ~ tinted_glass strict
execute as @e[tag=close_by_target,tag=wall,tag=3x3,x=0,type=item_display] at @s unless block ~ ~ ~ tinted_glass run fill ~ ~ ~-1 ~ ~2 ~1 tinted_glass strict
