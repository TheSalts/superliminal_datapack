execute if data entity @s attack run data remove entity @s attack
scoreboard players remove @s leftclicked 1
execute as @e[tag=targetW] at @s if entity @e[tag=small,limit=1,sort=nearest,dx=0] run tag @e[tag=small,limit=1,sort=nearest] add temp.kill
execute as @e[tag=targetW] at @s unless entity @e[tag=small,limit=1,sort=nearest,dx=0] run tag @e[tag=collision,limit=1,sort=nearest] add temp.kill
execute as @e[tag=temp.kill] on passengers run kill @s
kill @e[tag=temp.kill]
kill @e[tag=targetInteraction]
kill @e[tag=targetW]
tp @e[tag=hitboxCalc] 0 0 0