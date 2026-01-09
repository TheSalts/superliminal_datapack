$data modify storage slm:init size set value $(size)d
execute store result storage slm:init y double 0.5 run data get storage slm:init size 1
$summon block_display ~ ~ ~ {block_state: {Name: "$(block)"}, Tags: ["target", "temp"]}
execute as @n[tag=target,tag=temp,distance=0..,type=block_display] run function slm:setting/teleport with storage slm:init
$scoreboard players set @n[tag=target,tag=temp,distance=0..,type=block_display] level $(level)
$execute as @e[tag=temp,tag=target,distance=0..,type=block_display] run data merge entity @s {transformation: {scale: [$(size)f, $(size)f, $(size)f]}}
execute as @e[tag=temp,tag=target,distance=0..,type=block_display] store result entity @s transformation.translation[0] double -0.5 run data get storage slm:init size 1
execute as @e[tag=temp,tag=target,distance=0..,type=block_display] store result entity @s transformation.translation[1] double -0.5 run data get storage slm:init size 1
execute as @e[tag=temp,tag=target,distance=0..,type=block_display] store result entity @s transformation.translation[2] double -0.5 run data get storage slm:init size 1
summon interaction ~ ~ ~ {width: 1f, height: 0.5f, Tags: ["upperInteraction", "interaction", "temp"]}
summon interaction ~ ~ ~ {width: 1f, height: -0.5f, Tags: ["lowerInteraction", "interaction", "temp"]}
execute as @e[tag=temp,tag=interaction,distance=0..,type=interaction] at @s run ride @s mount @n[tag=target,tag=temp,distance=0..,type=block_display]
execute as @e[tag=temp,tag=target,distance=0..,type=block_display] at @s run function slm:private/collision/small_shulker
execute as @n[tag=temp,tag=target,distance=0..,type=block_display] at @s run function slm:_internal/private/resize/_resize_target_interaction.1
execute as @e[tag=temp,tag=interaction,distance=0..,type=interaction] at @s run function slm:_internal/private/resize/_resize_target_interaction.2
tag @e[tag=temp,distance=0..] remove temp

