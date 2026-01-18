# warn-off-file execute-group

function slm:world/init/inits/killall
data modify block 8 -60 19 Items set value [{Slot:13b,id:"minecraft:granite",count:1,components:{custom_name:{text:"화장실 타일",italic:false, color:light_purple},lore:[{text:"이스터에그",italic:false,color:yellow},{text:"어디선가 본 것 같은 타일이다",italic:false,color:gray}]}}]
execute positioned 7 -59 18 run function slm:setting/create_block {block:"smooth_quartz",size:1}
execute positioned 7 -59 19 run function slm:setting/create_block {block:"smooth_quartz",size:1}
execute positioned 7 -59 20 run function slm:setting/create_block {block:"smooth_quartz",size:1}
execute positioned 8 -59 18 run function slm:setting/create_block {block:"smooth_quartz",size:1}
execute positioned 8 -59 19 run function slm:setting/create_block {block:"smooth_quartz",size:1}
execute positioned 8 -59 20 run function slm:setting/create_block {block:"smooth_quartz",size:1}
execute positioned 9 -59 18 run function slm:setting/create_block {block:"smooth_quartz",size:1}
execute positioned 9 -59 19 run function slm:setting/create_block {block:"smooth_quartz",size:1}
execute positioned 9 -59 20 run function slm:setting/create_block {block:"smooth_quartz",size:1}
execute positioned -13 -58 24 run function slm:setting/create_block {block:"oak_log",size:1}
execute positioned -13 -59 8 run function slm:setting/create_block {block:"smooth_stone",size:3}
execute positioned -3 -59 3 run function slm:setting/create_block {block:"copper_block",size:5}
execute positioned -7 -59 2 run function slm:setting/create_block {block:"copper_block",size:3}
execute positioned -2 -59 9 run function slm:setting/create_block {block:"chiseled_copper",size:1}

execute positioned -2 -54 -7 run function slm:setting/create_block {block:"dark_oak_door",size:1}
execute positioned -2 -54 -7 positioned ~ ~-.5 ~ run tag @n[distance=0..,tag=target,type=block_display] add door_opendoor.lower
execute positioned -2 -54 -7 positioned ~ ~-.5 ~ run tag @n[distance=0..,tag=target,type=block_display] add door
execute positioned -2 -53 -7 run function slm:setting/create_block {block:"dark_oak_door",size:1}
execute positioned -2 -53 -7 positioned ~ ~.5 ~ run tag @n[distance=0..,tag=target,type=block_display] add door_opendoor.upper
execute positioned -2 -53 -7 positioned ~ ~.5 ~ run tag @n[distance=0..,tag=target,type=block_display] add door
data modify entity @n[tag=door_opendoor.lower,distance=0..,type=block_display] block_state.Properties set value {hinge:"left",facing:"west",half:"lower",open:"false"}
data modify entity @n[distance=0..,tag=door_opendoor.upper,type=block_display] block_state.Properties set value {hinge:"left",facing:"west",half:"upper",open:"false"}
fill 8 -54 -7 8 -53 -7 spruce_wood
execute positioned 44 -54 -7 run function slm:setting/create_block {block:"crying_obsidian",size:4}
execute positioned 51 -48 1 run function slm:setting/create_block {block:"diamond_block",size:1}
fill 39 -48 -18 49 -48 -28 air
execute positioned 40 -54 -27 run function slm:setting/create_block {block:"moss_block",size:1}

data modify block 17 -48 -15 Items set value [{Slot:13b,id:"minecraft:bucket",count:1,components:{custom_name:{text:"양동이",italic:false, color:light_purple},lore:[{text:"이스터에그",italic:false,color:yellow},{text:"네더 포탈을 만들 때 아주 중요한 물건이다",italic:false,color:gray}]}}]
data modify block 35 -49 -18 Items set value [{Slot:13b,id:"minecraft:lily_of_the_valley",count:1,components:{custom_name:{text:"은방울꽃",italic:false, color:light_purple},lore:[{text:"이스터에그",italic:false,color:yellow},{text:"어떤 절벽이 생각나는 꽃이다",italic:false,color:gray}]}}]

execute positioned 26 -53 -6 run function slm:world/set_salt
execute positioned 39 -49 -22 run function slm:world/set_salt

scoreboard players set #player_size var 0

scoreboard players set #door_lower var 0
scoreboard players set #door_upper var 0
scoreboard players set #door_open var 0
