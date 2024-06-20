execute on attacker run scoreboard players add @s leftclicked 1
execute if data entity @s attack run tag @s[tag=!targetInteraction,tag=!clickDetect] add targetInteraction
execute as @e[tag=targetInteraction] at @s if data entity @s attack run tag @e[tag=target,limit=1,sort=nearest] add targetW
execute as @e[tag=targetInteraction] at @s if data entity @s attack run tag @e[tag=interaction,tag=!targetInteraction,tag=!clickDetect,limit=1,sort=nearest] add targetInteraction
tag @e[tag=collision_interaction] add targetInteraction
execute on attacker if score @s leftclicked matches 2 as @e[tag=targetW] at @s run tag @e[tag=collsion_shulker,limit=8,sort=nearest] add hitbox

execute as @e[tag=targetW] at @s run tp @e[tag=collision,limit=8,sort=nearest] ~ -10000 ~

execute if data entity @s attack run data remove entity @s attack

execute as @a[tag=player] at @s run playsound entity.item.pickup neutral @s ~ ~ ~ 1 1 1