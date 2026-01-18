execute if entity @n[distance=0..,tag=plate_1,tag=pressed,type=block_display] run tag @n[distance=0..,tag=2,tag=wall,tag=close,type=item_display] remove close
execute unless entity @n[distance=0..,tag=plate_1,tag=pressed,type=block_display] run tag @n[distance=0..,tag=2,tag=wall,tag=!close,type=item_display] add close

execute if entity @n[distance=0..,tag=plate_2,tag=pressed,type=block_display] if entity @n[distance=0..,tag=plate_3,tag=pressed,type=block_display] run tag @n[distance=0..,tag=9,tag=wall,tag=close,type=item_display] remove close
execute unless entity @n[distance=0..,tag=plate_2,tag=pressed,type=block_display] run tag @n[distance=0..,tag=9,tag=wall,tag=!close,type=item_display] add close
execute unless entity @n[distance=0..,tag=plate_3,tag=pressed,type=block_display] run tag @n[distance=0..,tag=9,tag=wall,tag=!close,type=item_display] add close

execute if entity @n[distance=0..,tag=plate_4,tag=pressed,type=block_display] if entity @n[distance=0..,tag=plate_5,tag=pressed,type=block_display] run tag @n[distance=0..,tag=10,tag=wall,tag=close,type=item_display] remove close
execute unless entity @n[distance=0..,tag=plate_4,tag=pressed,type=block_display] run tag @n[distance=0..,tag=10,tag=wall,tag=!close,type=item_display] add close
execute unless entity @n[distance=0..,tag=plate_5,tag=pressed,type=block_display] run tag @n[distance=0..,tag=10,tag=wall,tag=!close,type=item_display] add close

execute if entity @n[distance=0..,tag=plate_easter_egg1,tag=pressed,type=block_display] run tag @a add fly
execute unless entity @n[distance=0..,tag=plate_easter_egg1,tag=pressed,type=block_display] run tag @a remove fly
execute if entity @a[tag=fly] positioned 0 -26 10 run particle cloud ~ ~ ~ 0.5 0.1 0.5 0 100 force @a
execute unless score #emerald_block achievement matches 1 as @a[tag=fly,x=-1, y=-26, z=9, dx=2, dz=2] run effect give @s levitation 10 10 true
