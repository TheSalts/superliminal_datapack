function slm:world/init/inits/killall

data modify block 52 -10 -30 Items set value [{Slot:13b,components:{"minecraft:custom_name":{color:"light_purple",italic:0b,text:"눈사람 머리"},"minecraft:lore":[{color:"yellow",italic:0b,text:"이스터에그"},{color:"gray",italic:0b,text:"눈사람의 머리다"}]},count:1,id:"minecraft:carved_pumpkin"}]

fill 52 57 -32 56 54 -32 air strict

execute positioned 47 -10 -17 run function slm:world/set_salt
setblock 43 -27 1 redstone_torch

execute unless entity @n[distance=0..,tag=chair_fin,type=interaction] run summon minecraft:interaction 56.50 54.00 -25.50 {Tags: ["chair_int", "chair_fin"], OnGround: 0b, Air: 300s, height: 1.0f, Invulnerable: 0b, response: 0b, width: 1.0f, Motion: [0.0d, 0.0d, 0.0d], Rotation: [0.0f, 0.0f], Fire: 0s, fall_distance: 0.0d, PortalCooldown: 0}
execute if score #chair_fin achievement matches 1 run tag @n[distance=0..,tag=chair_fin,type=interaction] add sitted

clone 57 52 -25 51 47 -32 51 53 -32 strict
kill @e[x=0,tag=clock_fin,type=item_display]
summon minecraft:item_display 52.5 55.0 -29.5 {Tags:["clock_fin"],Rotation: [90.0f, 90.0f], item: {count: 1, id: "minecraft:clock"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.0f, 0.0f]}}

fill 56 -5 -36 56 -4 -36 air strict
fill 57 -6 -34 60 -6 -38 white_concrete strict

scoreboard players set #bg var 0

time set noon

kill @e[x=0,tag=black_floor,type=block_display]
kill @e[x=0,tag=white_portal,type=text_display]
fill 56 58 -6 52 54 -6 minecraft:black_concrete
