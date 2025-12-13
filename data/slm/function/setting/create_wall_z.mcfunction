execute align xyz positioned ~ ~ ~1 run summon block_display ~ ~ ~ {block_state: {Name: "lime_stained_glass"}, Tags: ["wall","open", "temp"], interpolation_duration:1}
execute align xyz positioned ~ ~ ~ run summon block_display ~ ~ ~ {block_state: {Name: "lime_stained_glass"}, Tags: ["wall","open", "temp"], interpolation_duration:1}
execute align xyz positioned ~ ~ ~-1 run summon block_display ~ ~ ~ {block_state: {Name: "lime_stained_glass"}, Tags: ["wall","open", "temp"], interpolation_duration:1}
execute align xyz positioned ~ ~1 ~1 run summon block_display ~ ~ ~ {block_state: {Name: "lime_stained_glass"}, Tags: ["wall","open", "temp"], interpolation_duration:1}
execute align xyz positioned ~ ~1 ~ run summon block_display ~ ~ ~ {block_state: {Name: "lime_stained_glass"}, Tags: ["wall","open", "temp"], interpolation_duration:1}
execute align xyz positioned ~ ~1 ~-1 run summon block_display ~ ~ ~ {block_state: {Name: "lime_stained_glass"}, Tags: ["wall","open", "temp"], interpolation_duration:1}
execute align xyz positioned ~ ~2 ~1 run summon block_display ~ ~ ~ {block_state: {Name: "lime_stained_glass"}, Tags: ["wall","open", "temp"], interpolation_duration:1}
execute align xyz positioned ~ ~2 ~ run summon block_display ~ ~ ~ {block_state: {Name: "lime_stained_glass"}, Tags: ["wall","open", "temp"], interpolation_duration:1}
execute align xyz positioned ~ ~2 ~-1 run summon block_display ~ ~ ~ {block_state: {Name: "lime_stained_glass"}, Tags: ["wall","open", "temp"], interpolation_duration:1}
$execute as @e[tag=temp,tag=wall,type=block_display] run scoreboard players set @s wall $(level)
tag @e[tag=temp,tag=wall,type=block_display] remove temp
