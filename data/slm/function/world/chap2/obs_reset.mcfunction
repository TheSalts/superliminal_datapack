# warn-off-file target-selector-no-type
    execute at @s run tag @e[distance=..2,tag=!obsidian_place,type=!player] add temp.kill
    execute as @e[tag=temp.kill,distance=0..] at @s run tp @s ~ ~-1000 ~
    kill @e[tag=temp.kill,distance=0..]
    scoreboard players set #obsidian_look var 0
