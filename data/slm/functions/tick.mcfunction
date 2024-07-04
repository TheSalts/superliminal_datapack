function slm:world/world_tick

execute as @e[tag=player] at @s anchored eyes if score @s leftclicked matches 2 if block ^ ^ ^ structure_void run scoreboard players add @s leftclicked 1

execute unless entity @a[tag=player,scores={leftclicked=1..2}] run tag @e remove targetW
execute as @a[tag=player] at @s if score @s leftclicked matches 2 run function slm:private/distance/block_hitbox_distance

## 잡고 놓기
    execute as @e[tag=interaction,type=interaction] if data entity @s attack run function slm:private/interaction/leftclick_tick
    execute as @a[tag=player] at @s if score @s leftclicked matches 1 run function slm:private/distance/get_distance_1
    execute as @a[tag=player] at @s if score @s leftclicked matches 3.. run function slm:private/distance/get_distance_3

## 세팅
    execute as @e[tag=targetW,type=block_display] run data modify entity @s interpolation_duration set value 1
    execute as @e[tag=targetW,type=block_display] run data modify entity @s teleport_duration set value 1
    execute as @e[tag=collision_shulker,type=shulker] run attribute @s generic.max_health base set 100000
    ## 중력
        execute as @e[tag=target,tag=!targetW,type=block_display] unless score @s hitbox.gravity matches 0..1 run scoreboard players add @s hitbox.gravity 0
        execute as @e[tag=target,tag=!targetW,type=block_display] at @s if score @s hitbox.gravity matches 0 run function slm:private/gravity/gravity
        execute as @e[tag=targetW,type=block_display] at @s run scoreboard players set @s hitbox.gravity 0
        execute as @e[tag=target,type=block_display] at @s if score @s hitbox.gravity matches 1 if score @s isSmall matches 1 as @e[tag=collsion_shulker,tag=small,limit=1,sort=nearest] run tag @s remove shulker.gravity
        execute as @e[tag=target,type=block_display] at @s if score @s hitbox.gravity matches 1 unless score @s isSmall matches 1 as @e[tag=collsion_shulker,limit=8,sort=nearest] run tag @s remove shulker.gravity

    execute as @e[tag=targetW,type=block_display] run data modify entity @s Glowing set value true
    execute as @e[tag=target,tag=!targetW,type=block_display] run data modify entity @s Glowing set value false

execute as @e[tag=collision,type=block_display] at @s unless entity @e[tag=interaction,dx=0,type=interaction] run function slm:private/interaction/kill_shulker
