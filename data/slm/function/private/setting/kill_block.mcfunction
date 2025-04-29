execute if data entity @s attack run data remove entity @s attack
scoreboard players remove @s leftclicked 1
execute as @n[tag=targetW,type=block_display] at @s if entity @s[tag=small.target] run tag @n[tag=small,type=block_display] add temp.kill
execute as @n[tag=targetW,type=block_display] at @s if entity @s[tag=!small.target] run tag @e[tag=collision,limit=8,sort=nearest,type=block_display] add temp.kill
execute as @e[tag=temp.kill,type=block_display] on passengers run kill @s
kill @e[tag=temp.kill,type=block_display]
kill @e[tag=targetInteraction,type=interaction]
kill @e[tag=targetW,type=block_display]
scoreboard players set @s leftclicked 0
