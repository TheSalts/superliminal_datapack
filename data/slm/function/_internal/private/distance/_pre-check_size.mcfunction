$execute at @n[tag=targetW,type=block_display] if entity @n[tag=has_hitbox,distance=..$(scaleX),tag=!targetInteraction,tag=!targetW] run return 1
return fail
