# warn-off-file execute-group

execute if score #door_ans var matches 0 run tp @s ~-21 ~9 ~10 ~ ~
execute if score #door_ans var matches 1 if score #way_level var matches 0 run tp @s ~-21 ~3 ~10 ~ ~
execute if score #door_ans var matches 1 unless score #way_level var matches 0 run tp @s ~-21 ~-3 ~10 ~ ~

execute if score #door_ans var matches 0 run scoreboard players add #way_level var 1
execute if score #door_ans var matches 1 unless score #way_level var matches 0 run scoreboard players remove #way_level var 1

scoreboard players set #ans_set var 0
