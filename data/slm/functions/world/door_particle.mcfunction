execute as @e[tag=door_block_interaction,tag=block] at @s if entity @a[tag=player,distance=..2] align xyz run particle block_marker{block_state:"barrier"} ~.5 ~.5 ~.5 0 0 0 0 10 force @a
execute as @e[tag=door_block_interaction,tag=block] at @s if entity @a[tag=player,distance=..2] align xyz run particle block_marker{block_state:"barrier"} ~.5 ~1.5 ~.5 0 0 0 0 10 force @a
execute as @e[tag=door_block_interaction] at @s unless block ~ ~ ~ structure_void run tag @s add block
execute as @e[tag=door_block_interaction] at @s if block ~ ~ ~ structure_void run tag @s remove block