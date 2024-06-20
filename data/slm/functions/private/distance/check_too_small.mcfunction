scoreboard players set $min_size size.min 5
execute store result score $local_size size.min run data get storage slm:target_localscale scaleX 100
#if too small
execute if score $min_size size.min >= $local_size size.min run return 1
return 0