$execute as @s[tag=sl_shu_xn] positioned ~-$(scale_quarter) ~ ~ run function slm:tp_here
$execute as @s[tag=sl_shu_xp] positioned ~$(scale_quarter) ~ ~ run function slm:tp_here
$execute as @s[tag=sl_shu_yn] positioned ~ ~-$(scale_quarter) ~ run function slm:tp_here
$execute as @s[tag=sl_shu_yp] positioned ~ ~$(scale_quarter) ~ run function slm:tp_here
$execute as @s[tag=sl_shu_zn] positioned ~ ~ ~-$(scale_quarter) run function slm:tp_here
$execute as @s[tag=sl_shu_zp] positioned ~ ~ ~$(scale_quarter) run function slm:tp_here
$execute positioned ~ ~-$(scale_quarter) ~ run function slm:tp_here
$execute on passengers as @s[type=shulker] run attribute @s scale base set $(scale_half)
