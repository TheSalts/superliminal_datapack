tp @e[tag=collision,tag=!small,limit=8,sort=nearest,type=block_display] @s
$execute as @e[tag=sl_shu_xn,tag=collision,tag=!small,limit=4,sort=nearest,type=block_display] at @s positioned ~-$(scale_quarter) ~ ~ run function slm:tp_here
$execute as @e[tag=sl_shu_xp,tag=collision,tag=!small,limit=4,sort=nearest,type=block_display] at @s positioned ~$(scale_quarter) ~ ~ run function slm:tp_here
$execute as @e[tag=sl_shu_yn,tag=collision,tag=!small,limit=4,sort=nearest,type=block_display] at @s positioned ~ ~-$(scale_quarter) ~ run function slm:tp_here
$execute as @e[tag=sl_shu_yp,tag=collision,tag=!small,limit=4,sort=nearest,type=block_display] at @s positioned ~ ~$(scale_quarter) ~ run function slm:tp_here
$execute as @e[tag=sl_shu_zn,tag=collision,tag=!small,limit=4,sort=nearest,type=block_display] at @s positioned ~ ~ ~-$(scale_quarter) run function slm:tp_here
$execute as @e[tag=sl_shu_zp,tag=collision,tag=!small,limit=4,sort=nearest,type=block_display] at @s positioned ~ ~ ~$(scale_quarter) run function slm:tp_here
$execute as @e[tag=collision,tag=!small,limit=8,sort=nearest,type=block_display] at @s positioned ~ ~-$(scale_quarter) ~ run function slm:tp_here
