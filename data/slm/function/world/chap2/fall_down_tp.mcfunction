data modify entity @s Pos[0] set from storage slm:temp/fall dest.x
data modify entity @s Pos[1] set value 37d
data modify entity @s Pos[2] set from storage slm:temp/fall pos.z

execute positioned as @s rotated as @p run tp @a ~ ~ ~ ~ ~90
kill @s
