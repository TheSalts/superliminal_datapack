execute unless data entity @s {OnGround:1b} run return fail
execute unless entity @s[tag=player] run return run function slm:private/error/no_permission {msg: "/tag @s add player를 실행하십시오."}
execute at @s if entity @e[distance=..1.1,tag=!close,tag=!close_by_target,tag=open,tag=wall,type=item_display] run return fail
