execute on attacker run scoreboard players add @s leftclicked 1
execute if entity @s[tag=hitboxCalc] run tag @e[tag=interaction,tag=!hitboxCalc,limit=2,sort=nearest] add targetInteraction
execute if data entity @s attack run tag @s[tag=!targetInteraction,tag=!clickDetect] add targetInteraction
execute as @e[tag=targetInteraction] at @s if data entity @s attack run tag @e[tag=target,limit=1,sort=nearest] add targetW
execute as @e[tag=targetInteraction] at @s if data entity @s attack run tag @e[tag=interaction,tag=!targetInteraction,tag=!clickDetect,limit=1,sort=nearest] add targetInteraction
execute on attacker if score @s leftclicked matches 2 as @e[tag=targetW] at @s run tag @e[tag=collsion_shulker,limit=8,sort=nearest] add hitbox

execute on attacker if items entity @s weapon.mainhand #swords run return run function slm:private/setting/kill_block
execute if data entity @s attack run data remove entity @s attack

execute as @a[tag=player] at @s run playsound entity.item.pickup neutral @s ~ ~ ~ 1 1 1

execute as @a[tag=player] if score @s leftclicked matches 3 run return 0
execute as @e[tag=targetW] at @s if function slm:private/distance/check_too_small_shulker as @e[tag=collision,tag=small,limit=1,sort=nearest] at @s if entity @e[tag=targetInteraction,dx=0] run tag @s add killed
execute as @e[tag=targetW] at @s unless function slm:private/distance/check_too_small_shulker as @e[tag=collision,limit=8,sort=nearest] at @s if entity @e[tag=targetInteraction,dx=0] run tag @s add killed