execute as @s[tag=!targetW] unless score @s hitbox.gravity matches 0..1 run scoreboard players add @s hitbox.gravity 0
execute as @s[tag=!targetW,scores={hitbox.gravity=0}] run function slm:private/gravity/gravity
execute as @s[tag=!targetW,tag=!sparkle] run data modify entity @s Glowing set value false
execute as @s[tag=targetW] run scoreboard players set @s hitbox.gravity 0
execute as @s[tag=small.target,scores={hitbox.gravity=1}] as @n[tag=collision_shulker,tag=small] run tag @s remove shulker.gravity
execute as @s[tag=!small.target,scores={hitbox.gravity=1}] as @e[tag=collision_shulker,limit=8,sort=nearest] run tag @s remove shulker.gravity
