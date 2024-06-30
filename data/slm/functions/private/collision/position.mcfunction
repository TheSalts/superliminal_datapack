tp @e[tag=collision,tag=!small,limit=8,sort=nearest] @s
$execute as @e[tag=sl_shu_xn,tag=!small,limit=4,sort=nearest] at @s run tp @s ~-$(scale_quarter) ~ ~
$execute as @e[tag=sl_shu_xp,tag=!small,limit=4,sort=nearest] at @s run tp @s ~$(scale_quarter) ~ ~
$execute as @e[tag=sl_shu_yn,tag=!small,limit=4,sort=nearest] at @s run tp @s ~ ~-$(scale_quarter) ~
$execute as @e[tag=sl_shu_yp,tag=!small,limit=4,sort=nearest] at @s run tp @s ~ ~$(scale_quarter) ~
$execute as @e[tag=sl_shu_zn,tag=!small,limit=4,sort=nearest] at @s run tp @s ~ ~ ~-$(scale_quarter)
$execute as @e[tag=sl_shu_zp,tag=!small,limit=4,sort=nearest] at @s run tp @s ~ ~ ~$(scale_quarter)
$execute as @e[tag=collision,tag=!small,limit=8,sort=nearest] at @s run tp @s ~ ~-$(scale_quarter) ~
$execute as @e[tag=collision,tag=!small,limit=8,sort=nearest] on passengers as @s[type=shulker] run attribute @s generic.scale base set $(scale_half)