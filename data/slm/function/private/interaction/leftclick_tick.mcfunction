execute on attacker run scoreboard players add @s leftclicked 1
execute if data entity @s attack run tag @s[tag=!targetInteraction,tag=!clickDetect] add targetInteraction

execute as @e[tag=targetInteraction,type=interaction] at @s run function slm:_internal/private.interaction.leftclick_tick
# 개발자용 ( 칼 들고 때리면 죽음 )
    execute at @s on attacker if items entity @s weapon.mainhand #swords run return run function slm:private/setting/kill_block

execute if data entity @s attack run data remove entity @s attack
execute as @a[tag=player] at @s run playsound entity.item.pickup neutral @s ~ ~ ~ 1 1 1

