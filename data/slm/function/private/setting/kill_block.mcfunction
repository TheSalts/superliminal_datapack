execute if data entity @s attack run data remove entity @s attack
scoreboard players remove @s leftclicked 1
execute as @n[tag=targetW,tag=small.target,distance=0..,type=block_display] at @s run tag @n[tag=small,distance=0..,type=block_display] add temp.kill
execute as @n[tag=targetW,tag=!small.target,distance=0..,type=block_display] at @s run tag @e[tag=collision,limit=8,sort=nearest,distance=0..,type=block_display] add temp.kill
execute as @e[tag=temp.kill,distance=0..,type=block_display] on passengers run kill @s
kill @e[tag=temp.kill,distance=0..,type=block_display]
kill @e[tag=targetInteraction,distance=0..,type=interaction]
kill @e[tag=targetW,distance=0..,type=block_display]
scoreboard players set @s leftclicked 0
