tag @a add player
forceload add 0 0
execute unless entity @e[tag=distanceCalc] run summon item_display 0 0 0 {Tags: ["distanceCalc"]}
execute unless entity @e[tag=ratioCalc] run summon item_display 0 0 0 {Tags: ["ratioCalc"]}
execute unless entity @e[tag=hitboxCalc] run summon interaction 0 0 0 {Tags: ["hitboxCalc"]}
scoreboard objectives add math.plus dummy
scoreboard objectives add math.minus dummy
scoreboard objectives add math.int dummy
scoreboard objectives add const dummy
scoreboard objectives add leftclicked dummy
scoreboard objectives add rightclicked dummy
scoreboard objectives add raycast dummy
scoreboard objectives add leftclick.delay dummy
scoreboard objectives add wait dummy
scoreboard objectives add hitbox.temp dummy
scoreboard objectives add hitbox.pos dummy
scoreboard objectives add hitbox.gravity dummy
scoreboard players add @a[tag=player] raycast 0
scoreboard players add @a leftclicked 0
scoreboard players add @a rightclicked 0
scoreboard players set zero const 0
summon marker ~ ~ ~ {UUID: [I; 0, 0, 0, 0]}
scoreboard objectives add size.min dummy
scoreboard objectives add shulker.size.min dummy
scoreboard objectives add gravity_acceration dummy
scoreboard objectives add gravity dummy
scoreboard objectives add isSmall dummy

tag @e[tag=distanceCalc,limit=1] add init.temp
tag @e[tag=ratioCalc,limit=1] add init.temp
tag @e[tag=hitboxCalc,limit=1] add init.temp
kill @e[tag=!init.temp,tag=distanceCalc]
kill @e[tag=!init.temp,tag=ratioCalc]
kill @e[tag=!init.temp,tag=hitboxCalc]
tag @e remove init.temp


function slm:world/world_init