function slm:world/detection/sneak
execute unless entity @a[tag=emailed] run function slm:world/detection/email
execute as @a[tag=player] at @s if dimension the_end run function slm:world/detection/chap.3/direction
execute as @a[tag=player] at @s if dimension the_end run function slm:world/detection/chap.3/room_way
function slm:world/door_particle