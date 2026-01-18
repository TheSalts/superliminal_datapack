execute anchored eyes run summon item_display ^ ^ ^ {Tags:["fall_marker"]}

execute store result storage slm:temp/fall pos.y int 1 run data get entity @e[tag=fall_marker,limit=1,distance=0..,type=item_display] Pos[1] 1000
execute store result storage slm:temp/fall pos.z double 0.001 run data get entity @e[tag=fall_marker,limit=1,distance=0..,type=item_display] Pos[2] 1000

execute store result score #temp.fall var run data get storage slm:temp/fall pos.y 1
scoreboard players add #temp.fall var 30000
execute store result storage slm:temp/fall dest.x double 0.001 run scoreboard players get #temp.fall var

execute as @e[tag=fall_marker,limit=1,distance=0..,type=item_display] run function slm:world/chap2/fall_down_tp

function slm:world/stop_clock
