tp @e[tag=collision,tag=small,limit=1,sort=nearest] @s
$execute as @e[tag=collision,tag=small,limit=1,sort=nearest] at @s run tp @s ~ ~-$(scale_half) ~
$execute as @e[tag=collision,tag=small,limit=1,sort=nearest] on passengers as @s[type=shulker] run attribute @s generic.scale base set $(scale)