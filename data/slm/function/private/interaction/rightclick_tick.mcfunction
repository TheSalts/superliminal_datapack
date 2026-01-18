execute on vehicle unless entity @s[tag=door] run return fail
data remove entity @s interaction
scoreboard players add #door_open var 1
execute if score #door_open var matches 2 run scoreboard players set #door_open var 0
execute if score #door_open var matches 0 run function slm:_internal/private/private/interaction/rightclick_tick_5
execute if score #door_open var matches 1 run function slm:_internal/private/private/interaction/rightclick_tick_8

execute if score #door_lower var matches 1 if score #door_upper var matches 1 if score #door_open var matches 1 run function slm:_internal/private/private/interaction/rightclick_tick_12
