summon block_display ~ ~.5 ~ {block_state: {Name: "stone"}, Tags: ["target", "temp"]}
execute as @e[tag=temp,tag=target] run data merge entity @s {transformation: {translation: [-0.5f, -0.5f, -0.5f]}, teleport_duration: 1}
summon interaction ~ ~ ~ {width: 1f, height: 0.5f, Tags: ["upperInteraction", "interaction", "temp"]}
summon interaction ~ ~ ~ {width: 1f, height: -0.5f, Tags: ["lowerInteraction", "interaction", "temp"]}
execute as @e[tag=temp,tag=interaction] at @s run ride @s mount @e[tag=target,tag=temp,limit=1,sort=nearest]
execute as @e[tag=temp,tag=target] at @s run function slm:private/collision/shulker
tag @e remove temp