tp @s 55 55 -30 180 0
tag @a add clock_on
execute as @n[distance=0..,tag=clock_fin,type=item_display] at @s run function slm:world/clock_ringing
