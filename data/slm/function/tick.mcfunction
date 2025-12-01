# structure void로 되있으면 자동으로 놓아짐
    execute as @e[tag=player,scores={leftclicked=2}] at @s anchored eyes if block ^ ^ ^ structure_void run scoreboard players add @s leftclicked 1
    execute as @e[tag=player,scores={leftclicked=2}] at @s anchored eyes if block ^ ^ ^ #doors run scoreboard players add @s leftclicked 1

# check if player is more than 2
    scoreboard players set #playerCount var 0
    execute as @a[tag=player] run scoreboard players add #playerCount var 1
    execute unless score #lastPlayerCount var = #playerCount var if score #playerCount var matches 2.. run function slm:private/error/too_many_players
    execute store result score #lastPlayerCount var run scoreboard players get #playerCount var

tag @e[tag=target,type=block_display] add AABB_check
tag @e[tag=targetW,type=block_display] remove AABB_check

execute unless entity @a[tag=player,scores={leftclicked=1..2}] run tag @e remove targetW
execute as @a[tag=player,scores={leftclicked=2}] at @s run function slm:private/distance/block_hitbox_distance

execute as @e[tag=interaction,type=interaction] if data entity @s interaction run function slm:private/interaction/rightclick_tick
## 잡고 놓기
    execute as @e[tag=interaction,type=interaction] if data entity @s attack run function slm:private/interaction/leftclick_tick
    execute as @a[tag=player,scores={leftclicked=1}] at @s run function slm:private/distance/get_distance_1
    execute as @a[tag=player,scores={leftclicked=3..}] at @s run function slm:private/distance/get_distance_3

## 세팅
    execute as @e[tag=collision_shulker,type=shulker] run attribute @s max_health base set 100000
    ## 중력
        execute as @e[tag=target,type=block_display] at @s run function slm:_internal/_tick
        execute as @e[tag=targetW,type=block_display] run data modify entity @s Glowing set value true


## 발판
    tag @e[tag=hit,type=block_display] remove hit
    execute as @e[tag=plate,type=block_display] at @s run function slm:private/collision/calc_aabb_plate
    execute as @e[tag=plate,type=block_display] if score @s var matches 2 run tag @e[tag=temp.plate.AABB,type=block_display] add hit
    tag @e[tag=temp.plate.AABB,type=block_display] remove temp.plate.AABB
    execute as @e[tag=plate,tag=normal,tag=!pressed,type=block_display] at @s if entity @e[tag=can_plate,distance=...7] run scoreboard players set @s var 1
    execute as @e[tag=plate,tag=normal,tag=pressed,type=block_display] if score @s var matches 0..1 at @s unless entity @e[tag=can_plate,distance=...7] run scoreboard players set @s var 0
    # 일반 발판
        execute as @e[tag=plate,tag=normal,tag=pressed,type=block_display] if score @s var matches 0 at @s run function slm:private/plate/unpress
        execute as @e[tag=plate,tag=normal,tag=!pressed,type=block_display] if score @s var matches 1.. at @s run function slm:private/plate/press

    # 무게 발판
        execute as @e[tag=plate,tag=weight,tag=pressed,type=block_display] if score @s var matches 0 at @s run function slm:private/plate/unpress
        execute as @e[tag=target,type=block_display] at @s store result score @s size.min run data get entity @s transformation.scale[0]
        execute as @e[tag=plate,tag=weight,tag=pressed,type=block_display] if score @s var matches 1.. at @s unless score @n[tag=hit,type=block_display] size.min matches 3.. run function slm:private/plate/unpress
        execute as @e[tag=plate,tag=weight,tag=!pressed,type=block_display] if score @s var matches 1.. at @s if score @n[tag=hit,type=block_display] size.min matches 3.. run function slm:private/plate/press

    # 높이 발판
        execute as @e[tag=plate,tag=height,tag=pressed,type=block_display] if score @s var matches 0 at @s run function slm:private/plate/unpress
        execute as @e[tag=plate,tag=height,tag=pressed,type=block_display] if score @s var matches 1.. at @s unless score @n[tag=hit,type=block_display] gravity_acceration matches 10 run function slm:private/plate/unpress
        execute as @e[tag=plate,tag=height,tag=!pressed,type=block_display] if score @s var matches 1.. at @s if score @n[tag=hit,type=block_display] gravity_acceration matches 10 run function slm:private/plate/press


# function slm:world/tick
