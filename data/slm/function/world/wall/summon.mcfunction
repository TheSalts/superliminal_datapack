$execute align xyz positioned ~.5 ~.5 ~.5 run summon item_display ~ ~ ~ {Tags:["wall","$(n)","open","temp.wall"]}
execute as @e[x=0,tag=temp.wall,type=item_display] at @s run fill ~ ~ ~ ~ ~1 ~ tall_grass strict
tag @e[x=0,tag=temp.wall,type=item_display] remove temp.wall
