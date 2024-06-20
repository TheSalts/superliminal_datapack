execute positioned 40 -40 -14 as @a[tag=player,distance=..2] run tag @s add email
execute positioned 40 -40 -14 as @a[tag=email,distance=2..] run tag @s remove email
execute if entity @a[tag=email,tag=!emailed] run title @a times 0 20 20
title @a[tag=email,tag=!emailed] actionbar [{"keybind":"key.sneak","color":"aqua"}, {"text":"를 눌러 이메일을 확인하자.","color":"yellow"}]

execute as @a[tag=email,tag=sneak,tag=!emailed] run function slm:world/dialogue/intro/intro
execute as @a[tag=email,tag=sneak,tag=!emailed] run tag @s add emailed