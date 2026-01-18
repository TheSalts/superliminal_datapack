execute if score #player_size var matches 0 run attribute @s scale base set .5
execute if score #player_size var matches 1 run attribute @s scale base set .25
execute if score #player_size var matches 2 run attribute @s scale base set .1
execute if score #player_size var matches 3 run attribute @s scale base set .25
execute if score #player_size var matches 4 run attribute @s scale base set .5
execute if score #player_size var matches 5 run attribute @s scale base set 1
execute if score #player_size var matches 6 run attribute @s scale base set 2

scoreboard players add #player_size var 1
execute if score #player_size var matches 7.. run scoreboard players set #player_size var 0
tag @s add scale_done
