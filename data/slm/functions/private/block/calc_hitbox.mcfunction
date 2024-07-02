# if $box hitbox.temp is 1 => loop
scoreboard players set $box hitbox.temp 1
## check entity
$execute anchored eyes positioned ^ ^ ^$(distance) run tp @e[tag=hitboxCalc] ~ ~-$(sizeY) ~
execute as @e[tag=hitboxCalc] at @s if entity @e[tag=has_hitbox,dx=0] run return run scoreboard players set $box hitbox.temp 0
## check block
scoreboard players set $box hitbox.temp 1
$execute anchored eyes positioned ^ ^ ^$(distance) unless blocks ~-$(sizeX) ~-$(sizeY) ~-$(sizeZ) ~$(sizeX) ~$(sizeY) ~$(sizeZ) 0 0 0 masked run return run scoreboard players set $box hitbox.temp 0