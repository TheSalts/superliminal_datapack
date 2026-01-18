execute if score #bg var matches ..2 run effect give @s night_vision infinite 0 true
execute if score #bg var matches 3 run effect clear @s night_vision
effect give @s invisibility infinite 0 true
effect give @s saturation infinite 0 true
attribute @s entity_interaction_range base set 1000
