gamerule send_command_feedback false
tag @s add player
gamemode spectator @s
title @a times 0 0 20
title @s title "\uE001"
tag @a add spectate_1
schedule function slm:world/start_scene/goto_choice 65t
