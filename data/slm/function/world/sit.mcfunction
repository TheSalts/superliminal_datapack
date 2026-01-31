execute if score #bg var matches 2.. run return run data remove entity @s interaction
execute on target run ride @s mount @n[distance=0..,tag=chair_sit,type=item_display]
data remove entity @s interaction
execute if entity @s[tag=chair_fin,tag=!no_count] run scoreboard players set #chair_fin achievement 1
execute if entity @s[tag=!sitted,tag=!no_count] run scoreboard players add #chair achievement 1
tag @s[tag=!sitted,tag=!no_count] add sitted
