$data modify storage slm:init size set value $(size)d
execute store result storage slm:init y double 0.5 run data get storage slm:init size 1
$summon block_display ~ ~ ~ {block_state: {Name: "$(block)"}, Tags: ["target", "temp"]}
execute as @n[tag=target,tag=temp,distance=0..,type=block_display] run function slm:setting/teleport with storage slm:init
$execute as @e[tag=temp,tag=target,distance=0..,type=block_display] run data merge entity @s {transformation: {scale: [$(size)f, $(size)f, $(size)f]}}
execute as @e[distance=0..,tag=target,tag=temp,type=block_display] run function slm:_internal/private/setting/create_block_6
summon interaction ~ ~ ~ {width: 1f, height: 0.5f, Tags: ["upperInteraction", "interaction", "temp"]}
summon interaction ~ ~ ~ {width: 1f, height: -0.5f, Tags: ["lowerInteraction", "interaction", "temp"]}
execute as @e[tag=temp,tag=interaction,distance=0..,type=interaction] at @s run ride @s mount @n[tag=target,tag=temp,distance=0..,type=block_display]
execute as @e[tag=temp,tag=target,distance=0..,type=block_display] at @s run function slm:private/collision/shulker_other_place
execute as @n[tag=temp,tag=target,distance=0..,type=block_display] at @s run function slm:_internal/private/resize/_resize_target_interaction.1
execute as @e[tag=temp,tag=interaction,distance=0..,type=interaction] at @s run function slm:_internal/private/resize/_resize_target_interaction.2
execute as @e[tag=temp,tag=target,distance=0..,type=block_display] at @s run function slm:private/collision/set_aabb
tag @e[tag=temp,distance=0..] remove temp

