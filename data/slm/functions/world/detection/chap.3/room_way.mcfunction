execute as @e[tag=door_wall,tag=!door_fin] at @s in the_end unless entity @e[tag=door_wall,tag=!door_fin,tag=blocked] if score @s direction.1 = @a[tag=player,tag=waySelect,limit=1] direction run tag @s add blocked
execute as @e[tag=door_wall,tag=!door_fin] at @s in the_end unless entity @e[tag=door_wall,tag=!door_fin,tag=blocked] if score @s direction.2 = @a[tag=player,tag=waySelect,limit=1] direction run tag @s add blocked
execute as @e[tag=door_wall,tag=!door_fin] at @s in the_end unless entity @e[tag=door_wall,tag=!door_fin,tag=blocked] if score @s direction.3 = @a[tag=player,tag=waySelect,limit=1] direction run tag @s add blocked
execute as @e[tag=door_wall,tag=!door_fin] at @s in the_end unless entity @e[tag=door_wall,tag=!door_fin,tag=blocked] if score @s direction.4 = @a[tag=player,tag=waySelect,limit=1] direction run tag @s add blocked
execute as @e[tag=door_wall,tag=!door_fin] at @s in the_end unless entity @e[tag=door_wall,tag=!door_fin,tag=blocked] if score @s direction.5 = @a[tag=player,tag=waySelect,limit=1] direction run tag @s add blocked
execute as @e[tag=player] at @s in the_end if block ~ ~ ~ void_air unless entity @e[tag=door_wall,tag=blocked] if score @s direction matches ..-1 run tag @e[tag=door_wall,tag=!door_fin,limit=1,sort=nearest] add blocked
execute as @e[tag=door_wall,tag=!door_fin,tag=blocked] run tag @e[tag=door_wall,tag=!door_fin,tag=!blocked] add pass
execute as @e[tag=door_wall,tag=!door_fin,tag=blocked] at @s run setblock ~ ~ ~ white_concrete
execute as @e[tag=door_wall,tag=!door_fin,tag=blocked] at @s run setblock ~ ~1 ~ orange_terracotta
execute as @e[tag=door_wall,tag=!door_fin,tag=blocked] at @s run kill @e[type=block_display,tag=door_display,limit=2,sort=nearest]
execute as @e[tag=door_wall,tag=!door_fin,tag=pass] at @s run clone ~ ~5 ~ ~ ~6 ~ ~ ~ ~
execute as @e[tag=door_wall,tag=!door_fin,tag=pass] at @s run kill @e[type=block_display,tag=door_display,limit=2,sort=nearest]
tag @e[tag=wayText] add door_fin
execute as @e[tag=door_wall,tag=!door_fin,tag=pass] at @s run function slm:world/detection/chap.3/set_way

execute as @e[tag=wayText,tag=door_fin] at @s if entity @e[tag=wayText,tag=!door_fin,dy=0] run kill @s
execute if score $way way.wait matches 1 run kill @e[tag=door_fin,type=!text_display]