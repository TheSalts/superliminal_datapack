stopsound @a record lucid:alarm
execute if entity @a[tag=!clock_on] run return fail
execute as @a at @s run playsound lucid:alarm record @s ~ ~ ~ .7 1
schedule function slm:world/small_clock_ringing2 4s replace
