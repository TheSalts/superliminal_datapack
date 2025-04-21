$execute as @s[tag=sl_shu_xn] run tp @s ~-$(scale_quarter) ~ ~
$execute as @s[tag=sl_shu_xp] run tp @s ~$(scale_quarter) ~ ~
$execute as @s[tag=sl_shu_yn] run tp @s ~ ~-$(scale_quarter) ~
$execute as @s[tag=sl_shu_yp] run tp @s ~ ~$(scale_quarter) ~
$execute as @s[tag=sl_shu_zn] run tp @s ~ ~ ~-$(scale_quarter)
$execute as @s[tag=sl_shu_zp] run tp @s ~ ~ ~$(scale_quarter)
$tp @s ~ ~-$(scale_quarter) ~
$execute on passengers as @s[type=shulker] run attribute @s scale base set $(scale_half)
