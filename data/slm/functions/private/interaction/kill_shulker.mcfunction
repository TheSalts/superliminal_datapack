tp @s ~ ~-100000 ~
execute on passengers run effect clear @s resistance
execute on passengers if entity @s[tag=AABB] run kill @s
kill @s
