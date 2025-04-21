execute if entity @s[tag=small.target] run function slm:private/collision/small.move
execute unless entity @s[tag=small.target] run function slm:private/collision/move
scoreboard players set @s gravity_acceration 0
function slm:private/collision/set_aabb
tag @s remove target.gravity
scoreboard players set $adjust hitbox.gravity 0
