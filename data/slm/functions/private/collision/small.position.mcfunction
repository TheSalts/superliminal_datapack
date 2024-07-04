tp @e[tag=collision,tag=small,tag=temp_collision] @s
$execute as @e[tag=collision,tag=small,tag=temp_collision] at @s run tp @s ~ ~-$(scale_half) ~
$execute as @e[tag=collision,tag=small,tag=temp_collision] on passengers as @s[type=shulker,tag=collision_shulker] run attribute @s generic.scale base set $(scale)
tag @e remove temp_collision
