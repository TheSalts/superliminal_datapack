execute as @e[tag=player,scores={leftclicked=2}] at @s anchored eyes if block ^ ^ ^ structure_void run scoreboard players add @s leftclicked 1

execute unless entity @a[tag=player,scores={leftclicked=1..2}] run tag @e remove targetW
execute as @a[tag=player,scores={leftclicked=2}] at @s run function slm:private/distance/block_hitbox_distance

## 잡고 놓기
    execute as @e[tag=interaction,type=interaction] if data entity @s attack run function slm:private/interaction/leftclick_tick
    execute as @a[tag=player,scores={leftclicked=1}] at @s run function slm:private/distance/get_distance_1
    execute as @a[tag=player,scores={leftclicked=3..}] at @s run function slm:private/distance/get_distance_3

## 세팅
    execute as @e[tag=targetW,type=block_display] run data merge entity @s {interpolation_duration:1,teleport_duration:1}
    execute as @e[tag=collision_shulker,type=shulker] run attribute @s max_health base set 100000
    ## 중력
        execute as @e[tag=target,type=block_display] at @s run function slm:_internal/tick.1
        execute as @e[tag=targetW,type=block_display] run data modify entity @s Glowing set value true


# function slm:world/world_tick

# execute as @e[tag=targetW,type=block_display] at @s run scoreboard players set @e[tag=target,tag=!targetW,type=block_display,distance=..10,scores={hitbox.gravity=1}] hitbox.gravity 0
