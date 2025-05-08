$summon block_display ~ ~.5 ~ {block_state: {Name: "$(block)"}, Tags: ["target", "temp"]}
$scoreboard players set @n[tag=target,tag=temp,type=block_display] level $(level)
execute as @e[tag=temp,tag=target,type=block_display] run data merge entity @s {transformation: {translation: [-0.5f, -0.5f, -0.5f]}, teleport_duration: 1, interpolation_duration:1}
summon interaction ~ ~ ~ {width: 1f, height: 0.5f, Tags: ["upperInteraction", "interaction", "temp"]}
summon interaction ~ ~ ~ {width: 1f, height: -0.5f, Tags: ["lowerInteraction", "interaction", "temp"]}
execute as @e[tag=temp,tag=interaction,type=interaction] at @s run ride @s mount @n[tag=target,tag=temp,type=block_display]
execute as @e[tag=temp,tag=target,type=block_display] at @s run function slm:private/collision/small_shulker
execute as @n[tag=temp,tag=target,type=block_display] at @s run function slm:_internal/private/resize/_resize_target_interaction.1
execute as @e[tag=temp,tag=interaction,type=interaction] at @s run function slm:_internal/private/resize/_resize_target_interaction.2
tag @e remove temp
