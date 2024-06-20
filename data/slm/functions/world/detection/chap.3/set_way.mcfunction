execute store result score $way way.random run random value 0..1

execute if entity @e[tag=door_wall,tag=!door_fin,tag=blocked] if entity @e[tag=door_wall,tag=!door_fin,tag=pass] run tag @e[tag=door_wall,tag=!door_fin] add door_fin
# tellraw @a {"score":{"name": "@s","objective": "dirX"}}
execute as @e[tag=player] at @s run fill ~-50 ~-50 ~-50 ~50 ~50 ~50 air replace cave_air
execute as @e[tag=player] at @s run fill ~-50 ~-50 ~-50 ~50 ~50 ~50 air replace void_air
# left
execute if entity @s[tag=left, scores={dirX=0}] if score $way way.random matches 0 run setblock ^-18 ^-2 ^-1 minecraft:structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:door_room_left",posX:0,posY:1,posZ:0,powered:0b,rotation:"COUNTERCLOCKWISE_90",seed:0L,showair:0b,showboundingbox:0b,sizeX:37,sizeY:8,sizeZ:37}
execute if entity @s[tag=left, scores={dirX=0}] if score $way way.random matches 0 run setblock ^-18 ^-1 ^-1 redstone_block
execute if entity @s[tag=left, scores={dirX=270}] if score $way way.random matches 0 run setblock ^-18 ^-2 ^-1 minecraft:structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:door_room_left",posX:0,posY:1,posZ:0,powered:0b,rotation:"CLOCKWISE_180",seed:0L,showair:0b,showboundingbox:0b,sizeX:37,sizeY:8,sizeZ:37}
execute if entity @s[tag=left, scores={dirX=270}] if score $way way.random matches 0 run setblock ^-18 ^-1 ^-1 redstone_block
execute if entity @s[tag=left, scores={dirX=-90}] if score $way way.random matches 0 run setblock ^-18 ^-2 ^-1 minecraft:structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:door_room_left",posX:0,posY:1,posZ:0,powered:0b,rotation:"CLOCKWISE_180",seed:0L,showair:0b,showboundingbox:0b,sizeX:37,sizeY:8,sizeZ:37}
execute if entity @s[tag=left, scores={dirX=-90}] if score $way way.random matches 0 run setblock ^-18 ^-1 ^-1 redstone_block
execute if entity @s[tag=left, scores={dirX=-180}] if score $way way.random matches 0 run setblock ^-18 ^-2 ^-1 minecraft:structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:door_room_left",posX:0,posY:1,posZ:0,powered:0b,rotation:"CLOCKWISE_90",seed:0L,showair:0b,showboundingbox:0b,sizeX:37,sizeY:8,sizeZ:37}
execute if entity @s[tag=left, scores={dirX=-180}] if score $way way.random matches 0 run setblock ^-18 ^-1 ^-1 redstone_block
execute if entity @s[tag=left, scores={dirX=180}] if score $way way.random matches 0 run setblock ^-18 ^-2 ^-1 minecraft:structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:door_room_left",posX:0,posY:1,posZ:0,powered:0b,rotation:"CLOCKWISE_90",seed:0L,showair:0b,showboundingbox:0b,sizeX:37,sizeY:8,sizeZ:37}
execute if entity @s[tag=left, scores={dirX=180}] if score $way way.random matches 0 run setblock ^-18 ^-1 ^-1 redstone_block
execute if entity @s[tag=left, scores={dirX=90}] if score $way way.random matches 0 run setblock ^-18 ^-2 ^-1 minecraft:structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:door_room_left",posX:0,posY:1,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:37,sizeY:8,sizeZ:37}
execute if entity @s[tag=left, scores={dirX=90}] if score $way way.random matches 0 run setblock ^-18 ^-1 ^-1 redstone_block
execute if entity @s[tag=left, scores={dirX=-270}] if score $way way.random matches 0 run setblock ^-18 ^-2 ^-1 minecraft:structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:door_room_left",posX:0,posY:1,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:37,sizeY:8,sizeZ:37}
execute if entity @s[tag=left, scores={dirX=-270}] if score $way way.random matches 0 run setblock ^-18 ^-1 ^-1 redstone_block
# right
execute if entity @s[tag=right, scores={dirX=0}] if score $way way.random matches 0 run setblock ^-18 ^-2 ^-1 minecraft:structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:door_room_left",posX:0,posY:1,posZ:0,powered:0b,rotation:"COUNTERCLOCKWISE_90",seed:0L,showair:0b,showboundingbox:0b,sizeX:37,sizeY:8,sizeZ:37}
execute if entity @s[tag=right, scores={dirX=0}] if score $way way.random matches 0 run setblock ^-18 ^-1 ^-1 redstone_block
execute if entity @s[tag=right, scores={dirX=270}] if score $way way.random matches 0 run setblock ^-18 ^-2 ^-1 minecraft:structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:door_room_left",posX:0,posY:1,posZ:0,powered:0b,rotation:"CLOCKWISE_180",seed:0L,showair:0b,showboundingbox:0b,sizeX:37,sizeY:8,sizeZ:37}
execute if entity @s[tag=right, scores={dirX=270}] if score $way way.random matches 0 run setblock ^-18 ^-1 ^-1 redstone_block
execute if entity @s[tag=right, scores={dirX=-90}] if score $way way.random matches 0 run setblock ^-18 ^-2 ^-1 minecraft:structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:door_room_left",posX:0,posY:1,posZ:0,powered:0b,rotation:"CLOCKWISE_180",seed:0L,showair:0b,showboundingbox:0b,sizeX:37,sizeY:8,sizeZ:37}
execute if entity @s[tag=right, scores={dirX=-90}] if score $way way.random matches 0 run setblock ^-18 ^-1 ^-1 redstone_block
execute if entity @s[tag=right, scores={dirX=-180}] if score $way way.random matches 0 run setblock ^-18 ^-2 ^-1 minecraft:structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:door_room_left",posX:0,posY:1,posZ:0,powered:0b,rotation:"CLOCKWISE_90",seed:0L,showair:0b,showboundingbox:0b,sizeX:37,sizeY:8,sizeZ:37}
execute if entity @s[tag=right, scores={dirX=-180}] if score $way way.random matches 0 run setblock ^-18 ^-1 ^-1 redstone_block
execute if entity @s[tag=right, scores={dirX=180}] if score $way way.random matches 0 run setblock ^-18 ^-2 ^-1 minecraft:structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:door_room_left",posX:0,posY:1,posZ:0,powered:0b,rotation:"CLOCKWISE_90",seed:0L,showair:0b,showboundingbox:0b,sizeX:37,sizeY:8,sizeZ:37}
execute if entity @s[tag=right, scores={dirX=180}] if score $way way.random matches 0 run setblock ^-18 ^-1 ^-1 redstone_block
execute if entity @s[tag=right, scores={dirX=90}] if score $way way.random matches 0 run setblock ^-18 ^-2 ^-1 minecraft:structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:door_room_left",posX:0,posY:1,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:37,sizeY:8,sizeZ:37}
execute if entity @s[tag=right, scores={dirX=90}] if score $way way.random matches 0 run setblock ^-18 ^-1 ^-1 redstone_block
execute if entity @s[tag=right, scores={dirX=-270}] if score $way way.random matches 0 run setblock ^-18 ^-2 ^-1 minecraft:structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:door_room_left",posX:0,posY:1,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:37,sizeY:8,sizeZ:37}
execute if entity @s[tag=right, scores={dirX=-270}] if score $way way.random matches 0 run setblock ^-18 ^-1 ^-1 redstone_block
# left
execute if entity @s[tag=left, scores={dirX=0}] if score $way way.random matches 1 run setblock ^-18 ^-2 ^-1 minecraft:structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:door_room_right",posX:0,posY:1,posZ:0,powered:0b,rotation:"COUNTERCLOCKWISE_90",seed:0L,showair:0b,showboundingbox:0b,sizeX:37,sizeY:8,sizeZ:37}
execute if entity @s[tag=left, scores={dirX=0}] if score $way way.random matches 1 run setblock ^-18 ^-1 ^-1 redstone_block
execute if entity @s[tag=left, scores={dirX=270}] if score $way way.random matches 1 run setblock ^-18 ^-2 ^-1 minecraft:structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:door_room_right",posX:0,posY:1,posZ:0,powered:0b,rotation:"CLOCKWISE_180",seed:0L,showair:0b,showboundingbox:0b,sizeX:37,sizeY:8,sizeZ:37}
execute if entity @s[tag=left, scores={dirX=270}] if score $way way.random matches 1 run setblock ^-18 ^-1 ^-1 redstone_block
execute if entity @s[tag=left, scores={dirX=-90}] if score $way way.random matches 1 run setblock ^-18 ^-2 ^-1 minecraft:structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:door_room_right",posX:0,posY:1,posZ:0,powered:0b,rotation:"CLOCKWISE_180",seed:0L,showair:0b,showboundingbox:0b,sizeX:37,sizeY:8,sizeZ:37}
execute if entity @s[tag=left, scores={dirX=-90}] if score $way way.random matches 1 run setblock ^-18 ^-1 ^-1 redstone_block
execute if entity @s[tag=left, scores={dirX=-180}] if score $way way.random matches 1 run setblock ^-18 ^-2 ^-1 minecraft:structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:door_room_right",posX:0,posY:1,posZ:0,powered:0b,rotation:"CLOCKWISE_90",seed:0L,showair:0b,showboundingbox:0b,sizeX:37,sizeY:8,sizeZ:37}
execute if entity @s[tag=left, scores={dirX=-180}] if score $way way.random matches 1 run setblock ^-18 ^-1 ^-1 redstone_block
execute if entity @s[tag=left, scores={dirX=180}] if score $way way.random matches 1 run setblock ^-18 ^-2 ^-1 minecraft:structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:door_room_right",posX:0,posY:1,posZ:0,powered:0b,rotation:"CLOCKWISE_90",seed:0L,showair:0b,showboundingbox:0b,sizeX:37,sizeY:8,sizeZ:37}
execute if entity @s[tag=left, scores={dirX=180}] if score $way way.random matches 1 run setblock ^-18 ^-1 ^-1 redstone_block
execute if entity @s[tag=left, scores={dirX=90}] if score $way way.random matches 1 run setblock ^-18 ^-2 ^-1 minecraft:structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:door_room_right",posX:0,posY:1,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:37,sizeY:8,sizeZ:37}
execute if entity @s[tag=left, scores={dirX=90}] if score $way way.random matches 1 run setblock ^-18 ^-1 ^-1 redstone_block
execute if entity @s[tag=left, scores={dirX=-270}] if score $way way.random matches 1 run setblock ^-18 ^-2 ^-1 minecraft:structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:door_room_right",posX:0,posY:1,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:37,sizeY:8,sizeZ:37}
execute if entity @s[tag=left, scores={dirX=-270}] if score $way way.random matches 1 run setblock ^-18 ^-1 ^-1 redstone_block
# right
execute if entity @s[tag=right, scores={dirX=0}] if score $way way.random matches 1 run setblock ^-18 ^-2 ^-1 minecraft:structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:door_room_right",posX:0,posY:1,posZ:0,powered:0b,rotation:"COUNTERCLOCKWISE_90",seed:0L,showair:0b,showboundingbox:0b,sizeX:37,sizeY:8,sizeZ:37}
execute if entity @s[tag=right, scores={dirX=0}] if score $way way.random matches 1 run setblock ^-18 ^-1 ^-1 redstone_block
execute if entity @s[tag=right, scores={dirX=270}] if score $way way.random matches 1 run setblock ^-18 ^-2 ^-1 minecraft:structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:door_room_right",posX:0,posY:1,posZ:0,powered:0b,rotation:"CLOCKWISE_180",seed:0L,showair:0b,showboundingbox:0b,sizeX:37,sizeY:8,sizeZ:37}
execute if entity @s[tag=right, scores={dirX=270}] if score $way way.random matches 1 run setblock ^-18 ^-1 ^-1 redstone_block
execute if entity @s[tag=right, scores={dirX=-90}] if score $way way.random matches 1 run setblock ^-18 ^-2 ^-1 minecraft:structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:door_room_right",posX:0,posY:1,posZ:0,powered:0b,rotation:"CLOCKWISE_180",seed:0L,showair:0b,showboundingbox:0b,sizeX:37,sizeY:8,sizeZ:37}
execute if entity @s[tag=right, scores={dirX=-90}] if score $way way.random matches 1 run setblock ^-18 ^-1 ^-1 redstone_block
execute if entity @s[tag=right, scores={dirX=-180}] if score $way way.random matches 1 run setblock ^-18 ^-2 ^-1 minecraft:structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:door_room_right",posX:0,posY:1,posZ:0,powered:0b,rotation:"CLOCKWISE_90",seed:0L,showair:0b,showboundingbox:0b,sizeX:37,sizeY:8,sizeZ:37}
execute if entity @s[tag=right, scores={dirX=-180}] if score $way way.random matches 1 run setblock ^-18 ^-1 ^-1 redstone_block
execute if entity @s[tag=right, scores={dirX=180}] if score $way way.random matches 1 run setblock ^-18 ^-2 ^-1 minecraft:structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:door_room_right",posX:0,posY:1,posZ:0,powered:0b,rotation:"CLOCKWISE_90",seed:0L,showair:0b,showboundingbox:0b,sizeX:37,sizeY:8,sizeZ:37}
execute if entity @s[tag=right, scores={dirX=180}] if score $way way.random matches 1 run setblock ^-18 ^-1 ^-1 redstone_block
execute if entity @s[tag=right, scores={dirX=90}] if score $way way.random matches 1 run setblock ^-18 ^-2 ^-1 minecraft:structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:door_room_right",posX:0,posY:1,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:37,sizeY:8,sizeZ:37}
execute if entity @s[tag=right, scores={dirX=90}] if score $way way.random matches 1 run setblock ^-18 ^-1 ^-1 redstone_block
execute if entity @s[tag=right, scores={dirX=-270}] if score $way way.random matches 1 run setblock ^-18 ^-2 ^-1 minecraft:structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:door_room_right",posX:0,posY:1,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:37,sizeY:8,sizeZ:37}
execute if entity @s[tag=right, scores={dirX=-270}] if score $way way.random matches 1 run setblock ^-18 ^-1 ^-1 redstone_block
kill @e[type=item,nbt={Item:{id:"minecraft:spruce_door"}}]

execute if score $way way matches 5.. run function slm:world/detection/chap.3/way_clear
execute if entity @s[tag=true] run scoreboard players add $way way 1
execute if entity @s[tag=false] run scoreboard players set $way way 0