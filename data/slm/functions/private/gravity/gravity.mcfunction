execute store result storage slm:temp/gravity/size sizeX float 0.00001 run data get entity @s transformation.scale[0] 50000
execute store result storage slm:temp/gravity/size sizeY float 0.00001 run data get entity @s transformation.scale[1] 50000
execute store result storage slm:temp/gravity/size sizeZ float 0.00001 run data get entity @s transformation.scale[2] 50000

execute as @e[tag=collision,limit=8,sort=nearest] on passengers unless entity @s[tag=shulker.gravity] run tag @s add shulker.gravity

execute if score @s hitbox.gravity matches 0 if score @s gravity_acceration matches 0.. at @s run tp @s ~ ~-0.05 ~
execute if score @s gravity_acceration matches 0.. at @s run function slm:private/gravity/hitbox with storage slm:temp/gravity/size
execute if score @s hitbox.gravity matches 0 if score @s gravity_acceration matches 1.. at @s run tp @s ~ ~-0.05 ~
execute if score @s gravity_acceration matches 1.. at @s run function slm:private/gravity/hitbox with storage slm:temp/gravity/size
execute if score @s hitbox.gravity matches 0 if score @s gravity_acceration matches 2.. at @s run tp @s ~ ~-0.05 ~
execute if score @s gravity_acceration matches 2.. at @s run function slm:private/gravity/hitbox with storage slm:temp/gravity/size
execute if score @s hitbox.gravity matches 0 if score @s gravity_acceration matches 3.. at @s run tp @s ~ ~-0.05 ~
execute if score @s gravity_acceration matches 3.. at @s run function slm:private/gravity/hitbox with storage slm:temp/gravity/size
execute if score @s hitbox.gravity matches 0 if score @s gravity_acceration matches 4.. at @s run tp @s ~ ~-0.05 ~
execute if score @s gravity_acceration matches 4.. at @s run function slm:private/gravity/hitbox with storage slm:temp/gravity/size
execute if score @s hitbox.gravity matches 0 if score @s gravity_acceration matches 5.. at @s run tp @s ~ ~-0.05 ~
execute if score @s gravity_acceration matches 5.. at @s run function slm:private/gravity/hitbox with storage slm:temp/gravity/size
execute if score @s hitbox.gravity matches 0 if score @s gravity_acceration matches 6.. at @s run tp @s ~ ~-0.05 ~
execute if score @s gravity_acceration matches 6.. at @s run function slm:private/gravity/hitbox with storage slm:temp/gravity/size
execute if score @s hitbox.gravity matches 0 if score @s gravity_acceration matches 7.. at @s run tp @s ~ ~-0.05 ~
execute if score @s gravity_acceration matches 7.. at @s run function slm:private/gravity/hitbox with storage slm:temp/gravity/size
execute if score @s hitbox.gravity matches 0 if score @s gravity_acceration matches 8.. at @s run tp @s ~ ~-0.05 ~
execute if score @s gravity_acceration matches 8.. at @s run function slm:private/gravity/hitbox with storage slm:temp/gravity/size
scoreboard players add @s gravity_acceration 1
function slm:private/collision/move
execute if score @s hitbox.gravity matches 1 run function slm:private/collision/move
execute if score @s hitbox.gravity matches 1 run scoreboard players set @s gravity_acceration 0