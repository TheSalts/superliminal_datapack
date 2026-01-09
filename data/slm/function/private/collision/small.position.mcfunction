tp @e[tag=collision,tag=small,tag=temp_collision,distance=0..,type=block_display] @s
$execute as @e[tag=collision,tag=small,tag=temp_collision,distance=0..,type=block_display] at @s positioned ~ ~-$(scale_half) ~ run function slm:tp_here
$execute as @e[tag=collision,tag=small,tag=temp_collision,distance=0..,type=block_display] on passengers as @s[tag=collision_shulker,distance=0..,type=shulker] run attribute @s scale base set $(scale)
tag @e remove temp_collision
