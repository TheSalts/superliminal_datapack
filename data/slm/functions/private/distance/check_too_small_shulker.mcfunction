scoreboard players set $max_size shulker.size.min 20
execute store result score $local_size shulker.size.min run data get entity @s transformation.scale[0] 100
execute if score $max_size shulker.size.min >= $local_size shulker.size.min run return 1
return fail