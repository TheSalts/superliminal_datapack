execute on attacker run scoreboard players add @s leftclicked 1
execute if data entity @s attack run tag @s[tag=!targetInteraction,tag=!clickDetect] add targetInteraction

execute as @e[tag=targetInteraction,type=interaction] at @s if data entity @s attack run tag @e[tag=target,limit=1,sort=nearest,type=block_display] add targetW

execute as @e[tag=targetInteraction,type=interaction] at @s if data entity @s attack run tag @e[tag=interaction,tag=!targetInteraction,tag=!clickDetect,limit=1,sort=nearest,type=interaction] add targetInteraction

execute on attacker if items entity @s weapon.mainhand #swords run return run function slm:private/setting/kill_block
execute if data entity @s attack run data remove entity @s attack

execute as @a[tag=player] at @s run playsound entity.item.pickup neutral @s ~ ~ ~ 1 1 1
