execute as @a[tag=player] at @s if block ~ ~ ~ cave_air run tag @s add waySelect
execute as @a[tag=player] at @s unless block ~ ~ ~ cave_air run tag @s remove waySelect
execute as @a store result score @s dirX run data get entity @s Rotation[0]
execute as @e[tag=door_wall,tag=!door_fin] store result score @s dirX run data get entity @s Rotation[0]

execute as @a if score @s dirX matches -135..-105 run scoreboard players set @s direction 1
execute as @a if score @s dirX matches -105..-75 run scoreboard players set @s direction -1
execute as @a if score @s dirX matches -75..-45 run scoreboard players set @s direction 2

execute as @a if score @s dirX matches -45..-15 run scoreboard players set @s direction 3
execute as @a if score @s dirX matches -15..15 run scoreboard players set @s direction -2
execute as @a if score @s dirX matches 15..45 run scoreboard players set @s direction 4

execute as @a if score @s dirX matches 45..75 run scoreboard players set @s direction 5
execute as @a if score @s dirX matches 75..105 run scoreboard players set @s direction -3
execute as @a if score @s dirX matches 105..135 run scoreboard players set @s direction 6

execute as @a if score @s dirX matches 135..165 run scoreboard players set @s direction 7
execute as @a if score @s dirX matches 165..180 run scoreboard players set @s direction -4
execute as @a if score @s dirX matches -180..-165 run scoreboard players set @s direction -4
execute as @a if score @s dirX matches -165..-135 run scoreboard players set @s direction 0

execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches 0 run scoreboard players set @s direction.1 6
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches 0 run scoreboard players set @s direction.2 7
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches 0 run scoreboard players set @s direction.3 0
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches 0 run scoreboard players set @s direction.4 1
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches 0 run scoreboard players set @s direction.5 -4
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches 90 run scoreboard players set @s direction.1 0
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches 90 run scoreboard players set @s direction.2 1
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches 90 run scoreboard players set @s direction.3 2
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches 90 run scoreboard players set @s direction.4 3
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches 90 run scoreboard players set @s direction.5 -1
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches -270 run scoreboard players set @s direction.1 0
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches -270 run scoreboard players set @s direction.2 1
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches -270 run scoreboard players set @s direction.3 2
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches -270 run scoreboard players set @s direction.4 3
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches -270 run scoreboard players set @s direction.5 -1
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches -90 run scoreboard players set @s direction.1 4
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches -90 run scoreboard players set @s direction.2 5
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches -90 run scoreboard players set @s direction.3 6
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches -90 run scoreboard players set @s direction.4 7
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches -90 run scoreboard players set @s direction.5 -3
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches 270 run scoreboard players set @s direction.1 4
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches 270 run scoreboard players set @s direction.2 5
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches 270 run scoreboard players set @s direction.3 6
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches 270 run scoreboard players set @s direction.4 7
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches 270 run scoreboard players set @s direction.5 -3
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches -180 run scoreboard players set @s direction.1 2
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches -180 run scoreboard players set @s direction.2 3
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches -180 run scoreboard players set @s direction.3 4
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches -180 run scoreboard players set @s direction.4 5
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches -180 run scoreboard players set @s direction.5 -2
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches 180 run scoreboard players set @s direction.1 2
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches 180 run scoreboard players set @s direction.2 3
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches 180 run scoreboard players set @s direction.3 4
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches 180 run scoreboard players set @s direction.4 5
execute as @e[tag=door_wall,tag=!door_fin] if score @s dirX matches -180 run scoreboard players set @s direction.5 -2
execute as @e[tag=door_wall,tag=door_fin] run scoreboard players reset @s


# rotation 0 left -> 6,7,0,1
# rotation 180 right -> 2,3,4,5
# rotation 90 left -> 0,1,2,3
# rotation -90 right -> 4,5,6,7
# rotation 180 left -> 2,3,4,5
# rotation 0 right -> 6,7,0,1