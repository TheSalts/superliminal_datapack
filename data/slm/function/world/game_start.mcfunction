function slm:world/init/inits/reset_achievements
time set noon
function slm:world/init/inits/1
execute as @a run attribute @s entity_interaction_range base set 1000
tag @a add player
tag @a add can_plate
tag @e[x=0,tag=sitted,type=interaction] remove sitted
fill 4 -44 26 4 -43 26 white_concrete strict
fill -3 -44 16 -3 -43 16 white_concrete strict
