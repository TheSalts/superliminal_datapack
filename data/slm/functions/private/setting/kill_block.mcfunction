execute if data entity @s attack run data remove entity @s attack
scoreboard players remove @s leftclicked 1
execute as @e[tag=targetW] at @s if function slm:private/distance/check_too_small_shulker as @e[tag=collision,tag=small,limit=1,sort=nearest] run tag @s add temp.kill
execute as @e[tag=targetW] at @s unless function slm:private/distance/check_too_small_shulker as @e[tag=collision,limit=8,sort=nearest] run tag @s add temp.kill
execute as @e[tag=temp.kill] on passengers run kill @s
kill @e[tag=temp.kill]
kill @e[tag=targetInteraction]
kill @e[tag=targetW]
tp @e[tag=hitboxCalc] 0 0 0