# warn-off-file execute-group

tag @a add changed
execute if score #bg var matches 0 run time set midnight
execute if score #bg var matches 1 run fill 51 58 -25 57 54 -32 air strict
execute if score #bg var matches 1 run fill 58 53 -24 50 53 -33 white_concrete strict
execute if score #bg var matches 1 run kill @e[x=0,tag=clock_fin,type=item_display]
execute if score #bg var matches 2 run summon minecraft:block_display 54 54.1 -15 {Tags:["black_floor"],block_state: {Name: "minecraft:black_concrete"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [220.0f, 0.0f, 220.0f], translation: [-110.0f, 0.0f, -110.0f]}}
execute if score #bg var matches 2 run effect clear @a night_vision

execute if score #bg var matches 3 run summon minecraft:text_display 54.1875 54.0 -32.0 {Tags:["white_portal"],alignment: "center", background: 1073741824, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: " ", transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [26.3125f, 12.5f, 1.0f], translation: [0.0f, 0.0f, 0.0f]}}
execute if score #bg var matches 3 run fill 52 57 -32 53 54 -32 minecraft:white_concrete strict
execute if score #bg var matches 3 run fill 54 57 -32 54 56 -32 minecraft:white_concrete strict
execute if score #bg var matches 3 run fill 55 57 -32 56 54 -32 minecraft:white_concrete strict
execute if score #bg var matches 4 run tp @s ~ ~-4 ~ ~180 ~
execute if score #bg var matches 4 run tag @a add end_wait
execute if score #bg var matches 4 run tag @a add clock_on
execute if score #bg var matches 4 run schedule function slm:world/clock_ringing 1s

scoreboard players add #bg var 1
