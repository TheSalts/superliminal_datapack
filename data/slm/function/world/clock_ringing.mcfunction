stopsound @a record lucid:alarm
execute if entity @a[tag=!clock_on] run return fail
execute as @a at @s run playsound lucid:alarm record @s ~ ~ ~ 1 1 1
execute if entity @a[tag=small_sound] run return run schedule function slm:world/small_clock_ringing1 2s replace
schedule function slm:world/clock_ringing 4s replace
