execute if entity @s[y_rotation=-90..90] run function slm:world/chap2/ans_left
execute if entity @s[y_rotation=90..-90] run function slm:world/chap2/ans_right
scoreboard players set #ans_set var 1
execute if score #way_level var matches 0 run scoreboard players set #door_ans var 1
execute if score #way_level var matches 1 run scoreboard players set #door_ans var 0
execute if score #way_level var matches 2 run scoreboard players set #door_ans var 1
