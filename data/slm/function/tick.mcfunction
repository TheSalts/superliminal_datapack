# structure void로 되있으면 자동으로 놓아짐
    execute as @a[distance=0..,scores={leftclicked=2},tag=player] at @s anchored eyes run function slm:_internal/private/tick_2

# check if player is more than 2
    scoreboard players set #playerCount var 0
    execute as @a[tag=player] run scoreboard players add #playerCount var 1
    execute unless score #lastPlayerCount var = #playerCount var if score #playerCount var matches 2.. run function slm:private/error/too_many_players
    execute store result score #lastPlayerCount var run scoreboard players get #playerCount var

tag @e[tag=target,distance=0..,type=block_display] add AABB_check
tag @e[tag=targetW,distance=0..,type=block_display] remove AABB_check

execute unless entity @a[tag=player,scores={leftclicked=1..2},distance=0..] run tag @e[x=0,tag=targetW,type=block_display] remove targetW
execute as @a[tag=player,scores={leftclicked=2}] at @s run function slm:private/distance/block_hitbox_distance

## 잡고 놓기
    execute as @e[distance=0..,tag=interaction,type=interaction] run function slm:_internal/private/tick_16
    execute as @a[tag=player,scores={leftclicked=1}] at @s run function slm:private/distance/get_distance_1
    execute as @a[tag=player,scores={leftclicked=3..}] at @s run function slm:private/distance/get_distance_3

## 세팅
    execute as @e[tag=collision_shulker,distance=0..,type=shulker] run attribute @s max_health base set 100000
    ## 중력
        execute as @e[tag=target,distance=0..,type=block_display] at @s run function slm:_internal/_tick
        execute as @e[tag=targetW,distance=0..,type=block_display] run data modify entity @s Glowing set value true


## 발판
    tag @e[tag=hit,distance=0..,type=block_display] remove hit
    execute as @e[tag=plate,distance=0..,type=block_display] at @s run tag @e[distance=..3,tag=target,tag=!targetW,type=block_display] add temp.plate.AABB
    execute as @e[tag=plate,distance=0..,type=block_display] at @s run function slm:private/collision/calc_aabb_plate
    execute as @e[tag=plate,distance=0..,type=block_display] at @s if score @s var matches 1 run tag @n[tag=temp.plate.AABB,distance=0..,type=block_display] add hit
    tag @e[tag=temp.plate.AABB,distance=0..,type=block_display] remove temp.plate.AABB
    execute as @e[tag=plate,tag=normal,tag=!pressed,distance=0..,type=block_display] at @s if entity @a[tag=can_plate,distance=...7] run scoreboard players set @s var 2
    execute as @e[tag=plate,tag=normal,tag=pressed,distance=0..,type=block_display] if score @s var matches 2 at @s unless entity @a[tag=can_plate,distance=...7] run scoreboard players set @s var 0
    # 일반 발판
        execute as @e[tag=plate,tag=normal,tag=pressed,distance=0..,type=block_display] if score @s var matches 0 at @s run function slm:private/plate/unpress
        execute as @e[tag=plate,tag=normal,tag=!pressed,distance=0..,type=block_display] if score @s var matches 1.. at @s run function slm:private/plate/press


# fix placing shulker (https://discord.com/channels/154777837382008833/157097006500806656/1402253905408163842)
    execute as @e[tag=collision,distance=0..,type=block_display] store success entity @s OnGround byte 1 store success score @s var unless score @s var matches 1


function slm:world/tick
