execute on vehicle unless entity @s[tag=5.door] run return fail
data remove entity @s interaction
scoreboard players add #5_door_open var 1
execute if score #5_door_open var matches 2 run scoreboard players set #5_door_open var 0
execute if score #5_door_open var matches 0 as @e[tag=5.door.lower,type=block_display] run data modify entity @s block_state.Properties set value {half:"lower",powered:"false",open:"false",hinge:"left",facing:"north"}
execute if score #5_door_open var matches 0 as @e[tag=5.door.upper,type=block_display] run data modify entity @s block_state.Properties set value {half:"upper",powered:"false",open:"false",hinge:"left",facing:"north"}
execute if score #5_door_open var matches 0 as @a[tag=player] at @s run playsound block.wooden_door.close master @s ~ ~ ~ 1 1 1
execute if score #5_door_open var matches 1 as @e[tag=5.door.lower,type=block_display] run data modify entity @s block_state.Properties set value {half:"lower",powered:"false",open:"true",hinge:"left",facing:"north"}
execute if score #5_door_open var matches 1 as @e[tag=5.door.upper,type=block_display] run data modify entity @s block_state.Properties set value {half:"upper",powered:"false",open:"true",hinge:"left",facing:"north"}
execute if score #5_door_open var matches 1 as @a[tag=player] at @s run playsound block.wooden_door.open master @s ~ ~ ~ 1 1 1

execute if score #5_door_lower var matches 1 if score #5_door_upper var matches 1 if score #5_door_open var matches 1 run fill 63 1 87 63 2 87 air replace stripped_mangrove_wood
execute if score #5_door_lower var matches 1 if score #5_door_upper var matches 1 if score #5_door_open var matches 1 if block 63 1 87 air as @e[tag=5.door,type=block_display] on passengers run kill @s
execute if score #5_door_lower var matches 1 if score #5_door_upper var matches 1 if score #5_door_open var matches 1 if block 63 1 87 air as @e[tag=5.door,type=block_display] at @s run tp @n[tag=collision_shulker] ~ ~-1000 ~
execute if score #5_door_lower var matches 1 if score #5_door_upper var matches 1 if score #5_door_open var matches 1 if block 63 1 87 air as @e[tag=5.door,type=block_display] at @s run tp @n[tag=collision] ~ ~-1000 ~
