tp @e[tag=collision,tag=small,tag=temp_collision,type=block_display] @s
$execute as @e[tag=collision,tag=small,tag=temp_collision,type=block_display] at @s run tp @s ~ ~-$(scale_half) ~
$execute as @e[tag=collision,tag=small,tag=temp_collision,type=block_display] on passengers as @s[type=shulker,tag=collision_shulker] run attribute @s scale base set $(scale)
tag @e remove temp_collision
