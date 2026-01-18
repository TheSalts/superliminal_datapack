execute as @e[distance=0..,tag=door_opendoor.lower,type=block_display] run data modify entity @s block_state.Properties set value {half:"lower",powered:"false",open:"true",hinge:"left",facing:"west"}
execute as @e[distance=0..,tag=door_opendoor.upper,type=block_display] run data modify entity @s block_state.Properties set value {half:"upper",powered:"false",open:"true",hinge:"left",facing:"west"}
execute as @a[tag=player] at @s run playsound block.wooden_door.open master @s ~ ~ ~ 1 1 1
