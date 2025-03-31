tp @e[tag=collision,tag=temp_collision,tag=!small,limit=8,sort=nearest,type=block_display] @s
$execute as @e[tag=temp_collision,tag=!small,tag=sl_shu_xn,limit=4,sort=nearest,type=block_display] at @s run tp @s ~-$(scale_quarter) ~ ~
$execute as @e[tag=temp_collision,tag=!small,tag=sl_shu_xp,limit=4,sort=nearest,type=block_display] at @s run tp @s ~$(scale_quarter) ~ ~
$execute as @e[tag=temp_collision,tag=!small,tag=sl_shu_yn,limit=4,sort=nearest,type=block_display] at @s run tp @s ~ ~-$(scale_quarter) ~
$execute as @e[tag=temp_collision,tag=!small,tag=sl_shu_yp,limit=4,sort=nearest,type=block_display] at @s run tp @s ~ ~$(scale_quarter) ~
$execute as @e[tag=temp_collision,tag=!small,tag=sl_shu_zn,limit=4,sort=nearest,type=block_display] at @s run tp @s ~ ~ ~-$(scale_quarter)
$execute as @e[tag=temp_collision,tag=!small,tag=sl_shu_zp,limit=4,sort=nearest,type=block_display] at @s run tp @s ~ ~ ~$(scale_quarter)
$execute as @e[tag=temp_collision,tag=!small,limit=8,sort=nearest,type=block_display] at @s run tp @s ~ ~-$(scale_quarter) ~
$execute as @e[tag=temp_collision,tag=!small,limit=8,sort=nearest,type=block_display] on passengers as @s[type=shulker] run attribute @s scale base set $(scale_half)
tag @e remove temp_collision
