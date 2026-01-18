stopsound @a record lucid:alarm
execute if entity @a[tag=!clock_on] run return fail
execute as @a at @s run playsound lucid:alarm record @s ~ ~ ~ 1 1 1
schedule function slm:world/clock_ringing 4s replace
