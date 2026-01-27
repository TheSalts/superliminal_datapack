# execute on vehicle at @s unless score @s level = @p[tag=player] level run scoreboard players set #cancel_click var 1

execute on attacker run function slm:_internal/private/private/interaction/leftclick_tick_3

execute on vehicle if entity @s[tag=obs,tag=target] run function slm:_internal/private/private/interaction/remove_obsidian

execute if score #cancel_click var matches 1 run function slm:_internal/private/private/interaction/leftclick_tick_7
execute unless data entity @s attack run return fail

execute on attacker run scoreboard players add @s leftclicked 1
execute if data entity @s attack run tag @s[tag=!targetInteraction,tag=!clickDetect] add targetInteraction

execute as @e[tag=targetInteraction,distance=0..,type=interaction] at @s if data entity @s attack run function slm:_internal/private/interaction/_leftclick_tick
scoreboard players set @n[tag=targetW,tag=target.gravity,distance=0..,type=block_display] gravity_acceration 0
# 개발자용 ( 칼 들고 때리면 죽음 )
    execute at @s on attacker if items entity @s weapon.mainhand #swords run return run function slm:private/setting/kill_block

execute if data entity @s attack run data remove entity @s attack
execute as @a[tag=player] at @s run playsound entity.item.pickup neutral @s ~ ~ ~ 1 1 1
