function slm:world/init/inits/killall
kill @e[x=0,tag=obsidian_display,type=block_display]
data modify block -1 39 -2 Items set value [{Slot:22b,components:{"minecraft:custom_name":{color:"light_purple",italic:0b,text:"저주받은 에메랄드"},"minecraft:lore":[{color:"yellow",italic:0b,text:"이스터에그"},{color:"gray",italic:0b,text:"어떤 사막에 묻혀 있던 에메랄드"},{color:"gray",text:"왠지 밟으면 공허로 떨어질 것만 같다"}]},count:1,id:"minecraft:emerald_block"}]
function slm:world/init/inits/set_obsidian
scoreboard players reset #obsidian_look var
fill 35 -16 5 35 -26 15 minecraft:white_concrete

fill 27 -19 9 27 -22 9 waxed_copper_block
fill 29 -20 10 29 -20 12 acacia_log[axis=z]
fill 29 -20 8 29 -20 9 acacia_log[axis=z]

scoreboard players set #ans_set var 0
scoreboard players set #way_level var 0

execute positioned 18 -25 19 run function slm:world/set_salt
tag @a remove goto_2
