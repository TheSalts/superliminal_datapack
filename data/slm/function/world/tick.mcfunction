function slm:world/wall/tick
scoreboard players enable @a rptest
execute as @a if score @s rptest matches 1.. at @s run function slm:_internal/private/world/tick_2
execute positioned 13 -44 16 if block 13 -44 16 spruce_door[open=false] as @a[distance=...7] at @s run function slm:_internal/private/world/tick_4

execute store result score #door_lower_size var run data get entity @n[tag=door_opendoor.lower,x=0,type=block_display] transformation.scale[0]
execute store result score #door_upper_size var run data get entity @n[tag=door_opendoor.upper,x=0,type=block_display] transformation.scale[0]
execute if entity @e[tag=door_opendoor.lower,x=7, y=-54, z=-7,dy=1,type=block_display] if score #door_lower_size var matches 1 run scoreboard players set #door_lower var 1
execute if entity @e[tag=door_opendoor.upper,x=7, y=-53, z=-7,dy=1,type=block_display] if score #door_upper_size var matches 1 run scoreboard players set #door_upper var 1
execute as @e[distance=0..,tag=lower_no,type=item_display] at @s if entity @e[dx=0,tag=interaction,type=interaction] run scoreboard players set #door_lower var 0
execute as @e[distance=0..,tag=upper_no,type=item_display] at @s if entity @e[dx=0,tag=interaction,type=interaction] run scoreboard players set #door_upper var 0


tag @a[x=58, y=-54, z=-7, dy=1] add goto_2
execute as @a[dy=1,tag=goto_2,x=56,y=-54,z=-7] if data entity @s {OnGround:1b} at @s run function slm:_internal/private/world/tick_15
execute as @a[tag=goto_2,x=56, y=-63, z=-7, dy=1] at @s run function slm:world/goto_2

execute as @e[x=0,tag=clock1,tag=ringing,type=interaction] if data entity @s attack run function slm:world/chap2/clock_int

execute as @a[tag=player,x=7, y=-31, z=9, dz=2, dy=2] at @s run function slm:world/chap2/fall_down



execute at @n[x=0,tag=obsidian_place,type=item_display] if entity @a[dx=0] run scoreboard players add #obsidian_look var 1
execute if score #obsidian_look var matches 20 run function slm:world/chap2/set_ob
execute if entity @e[x=0,tag=obsidian_display,type=block_display] at @n[x=0,tag=obsidian_place,type=item_display] unless entity @a[dx=0] as @n[x=0,tag=obs,tag=target,type=block_display] run function slm:world/chap2/obs_reset

execute positioned 27 -22 9 if block ~ ~ ~ air run particle white_smoke ~ ~ ~ 0.2 0.1 0.2 .01 1 force @a
execute positioned 29 -20 12 if block ~ ~ ~ air run particle white_smoke ~ ~.5 ~.4 0.2 0.1 0.2 .01 1 force @a

execute as @a[x=69, y=-26, z=9, dz=2, dy=17] if score #ans_set var matches 0 at @s run function slm:world/chap2/set_way
execute if score #ans_set var matches 1 as @a at @s run function slm:_internal/private/world/tick_32

execute as @a[tag=!clock_on] at @s if block ~ ~-2 ~ spruce_trapdoor run function slm:world/chap2/next
execute as @a[x=43, y=-26, z=1,dy=2] at @s if block ~ ~ ~ dark_oak_door[open=true] run tp @s ~ ~14 ~

execute as @e[x=0,tag=salt_int,type=interaction] if data entity @s attack at @s run function slm:world/salt_interaction

function slm:world/plates

execute as @a[tag=player,tag=!scale_done,x=53, y=-54, z=-26, dx=1, dy=4] run function slm:world/scale/set
execute as @a[tag=scale_done] at @s if block ~ ~-1 ~ white_concrete run tag @s remove scale_done

execute as @e[x=0,tag=chair_int,type=interaction] if data entity @s interaction at @s run function slm:world/sit

function slm:world/inv_ui/achievements


execute as @a run function slm:world/inv_ui/set

execute if entity @a[x=57, y=-6, z=-38, dx=4, dy=4, dz=4, y_rotation=-80..-100] run fill 56 -5 -36 56 -4 -36 white_concrete strict
execute if entity @a[x=57, y=-6, z=-38, dx=4, dy=4, dz=4, y_rotation=80..100] run fill 57 -6 -34 60 -6 -38 air strict

execute as @a[tag=player] at @s run function slm:_internal/private/world/tick_56

execute as @e[x=0,tag=clock_fin,type=interaction] if data entity @s attack at @s run function slm:world/stop_clock

execute as @a[tag=!changed,tag=player,x=54, y=54, z=-7,dy=1, x_rotation=-30..30, y_rotation=-20..20] at @s if entity @n[dx=0,tag=check_look_black,type=item_display] unless entity @e[x=0,tag=white_portal,type=text_display] run function slm:world/chap3/change_bg
execute as @a[tag=changed] at @s unless entity @n[dx=0,tag=check_look_black,type=item_display] run tag @s remove changed

execute if entity @n[distance=0..,tag=white_portal,type=text_display] as @a[dx=3,dy=2,x_rotation=-90..70,y_rotation=90..-90,x=52,y=54,z=-32] at @s if entity @s[dx=3,dy=2,x=52,y=54,z=-33] run function slm:_internal/private/world/tick_63

execute as @a run function slm:world/defalut_effects

execute unless score #chair_fin achievement matches 1 as @n[distance=0..,tag=chair_fin,tag=sitted,type=interaction] run scoreboard players set #chair_fin achievement 1

execute as @a[tag=!player] at @s run function slm:world/start_scene/join

xp set @a 0 levels

execute if loaded 7 -50 17 as @a[tag=spectate_1] run function slm:_internal/private/world/tick_73

execute as @a[tag=end_wait] at @s if block ~ ~-2 ~ pale_oak_fence run function slm:world/end_scene/1

execute as @a[x=38, y=-44, z=-17, dx=11, dy=3, dz=14] run tp @s 43 -16 -21
