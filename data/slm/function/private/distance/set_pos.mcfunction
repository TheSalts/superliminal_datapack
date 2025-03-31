execute as @a[tag=player] store result storage slm:pos playerPosX float 0.00001 run data get entity @s Pos[0] 100000
execute as @a[tag=player] store result storage slm:pos playerPosY float 0.00001 run data get entity @s Pos[1] 100000
data merge storage slm:temp/pos {x:0d,y:1.62d}
execute as @a[tag=player] store result storage slm:temp/pos x double 0.00001 run data get entity @s Pos[1] 100000
function gm:add with storage slm:temp/pos
execute as @a[tag=player] store result storage slm:pos playerPosY float 0.00001 run data get storage gm:io out 100000
execute as @a[tag=player] store result storage slm:pos playerPosZ float 0.00001 run data get entity @s Pos[2] 100000
execute as @e[tag=targetW,type=block_display] run function slm:_internal/private.distance.set_pos
