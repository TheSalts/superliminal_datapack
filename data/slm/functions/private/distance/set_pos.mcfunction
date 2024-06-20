execute as @a[tag=player] store result storage slm:pos playerPosX float 0.00001 run data get entity @s Pos[0] 100000
execute as @a[tag=player] store result storage slm:pos playerPosY float 0.00001 run data get entity @s Pos[1] 100000
data modify storage hmp:math inputs set value [0d,1.62d]
execute as @a[tag=player] store result storage hmp:math inputs[0] double 0.00001 run data get entity @s Pos[1] 100000
function hmp:add
execute as @a[tag=player] store result storage slm:pos playerPosY float 0.00001 run data get storage hmp:math output 100000
execute as @a[tag=player] store result storage slm:pos playerPosZ float 0.00001 run data get entity @s Pos[2] 100000
execute as @e[tag=targetW] store result storage slm:pos targetPosX float 0.00001 run data get entity @s Pos[0] 100000
execute as @e[tag=targetW] store result storage slm:pos targetPosY float 0.00001 run data get entity @s Pos[1] 100000
execute as @e[tag=targetW] store result storage slm:pos targetPosZ float 0.00001 run data get entity @s Pos[2] 100000