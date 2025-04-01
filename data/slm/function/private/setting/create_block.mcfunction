summon block_display ~ ~.5 ~ {block_state: {Name: "stone"}, Tags: ["target", "temp"]}
execute as @e[tag=temp,tag=target,type=block_display] run data merge entity @s {transformation: {translation: [-0.5f, -0.5f, -0.5f]}, teleport_duration: 1, start_interpolation:0}
summon interaction ~ ~ ~ {width: 1f, height: 0.5f, Tags: ["upperInteraction", "interaction", "temp"]}
summon interaction ~ ~ ~ {width: 1f, height: -0.5f, Tags: ["lowerInteraction", "interaction", "temp"]}
execute as @e[tag=temp,tag=interaction,type=interaction] at @s run ride @s mount @n[tag=target,tag=temp,type=block_display]
execute as @e[tag=temp,tag=target,type=block_display] at @s run function slm:private/collision/small_shulker
tag @e remove temp
