execute as @a[tag=player,scores={sneak=1..}] run tag @s add sneak
execute as @a[tag=player,scores={sneak=0}] run tag @s remove sneak
scoreboard players set @a[scores={sneak=1..}] sneak 0