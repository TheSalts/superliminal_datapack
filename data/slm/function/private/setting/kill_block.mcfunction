execute if data entity @s attack run data remove entity @s attack
scoreboard players remove @s leftclicked 1
execute as @e[tag=targetW,type=block_display] at @s if entity @e[tag=small,limit=1,sort=nearest,dx=0,type=block_display] run tag @e[tag=small,limit=1,sort=nearest,type=block_display] add temp.kill
execute as @e[tag=targetW,type=block_display] at @s unless entity @e[tag=small,limit=1,sort=nearest,dx=0,type=block_display] run tag @e[tag=collision,limit=1,sort=nearest,type=block_display] add temp.kill
execute as @e[tag=temp.kill,type=block_display] on passengers run kill @s
kill @e[tag=temp.kill,type=block_display]
kill @e[tag=targetInteraction,type=interaction]
kill @e[tag=targetW,type=block_display]
