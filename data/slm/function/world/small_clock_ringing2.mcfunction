stopsound @a record lucid:alarm
execute if entity @a[tag=!clock_on] run return fail
execute as @a at @s run playsound lucid:alarm record @s ~ ~ ~ .3 1
schedule function slm:world/last_crash 1s
schedule function slm:world/end_scene/3.5 4s
