execute if function slm:private/distance/check_too_small_shulker run return run function slm:private/collision/small_shulker

summon block_display 0 0 0 {Passengers: [{id: "shulker", Silent: 1, NoAI: 1, Invulnerable: 1, PersistenceRequired: true, Tags: ["collision_shulker", "has_hitbox"]}], Tags: ["collision", "sl_shu_xn", "sl_shu_yn", "sl_shu_zn", "temp_collision"]}
summon block_display 0 0 0 {Passengers: [{id: "shulker", Silent: 1, NoAI: 1, Invulnerable: 1, PersistenceRequired: true, Tags: ["collision_shulker", "has_hitbox"]}], Tags: ["collision", "sl_shu_xn", "sl_shu_yn", "sl_shu_zp", "temp_collision"]}
summon block_display 0 0 0 {Passengers: [{id: "shulker", Silent: 1, NoAI: 1, Invulnerable: 1, PersistenceRequired: true, Tags: ["collision_shulker", "has_hitbox"]}], Tags: ["collision", "sl_shu_xn", "sl_shu_yp", "sl_shu_zn", "temp_collision"]}
summon block_display 0 0 0 {Passengers: [{id: "shulker", Silent: 1, NoAI: 1, Invulnerable: 1, PersistenceRequired: true, Tags: ["collision_shulker", "has_hitbox"]}], Tags: ["collision", "sl_shu_xn", "sl_shu_yp", "sl_shu_zp", "temp_collision"]}
summon block_display 0 0 0 {Passengers: [{id: "shulker", Silent: 1, NoAI: 1, Invulnerable: 1, PersistenceRequired: true, Tags: ["collision_shulker", "has_hitbox"]}], Tags: ["collision", "sl_shu_xp", "sl_shu_yn", "sl_shu_zn", "temp_collision"]}
summon block_display 0 0 0 {Passengers: [{id: "shulker", Silent: 1, NoAI: 1, Invulnerable: 1, PersistenceRequired: true, Tags: ["collision_shulker", "has_hitbox"]}], Tags: ["collision", "sl_shu_xp", "sl_shu_yn", "sl_shu_zp", "temp_collision"]}
summon block_display 0 0 0 {Passengers: [{id: "shulker", Silent: 1, NoAI: 1, Invulnerable: 1, PersistenceRequired: true, Tags: ["collision_shulker", "has_hitbox"]}], Tags: ["collision", "sl_shu_xp", "sl_shu_yp", "sl_shu_zn", "temp_collision"]}
summon block_display 0 0 0 {Passengers: [{id: "shulker", Silent: 1, NoAI: 1, Invulnerable: 1, PersistenceRequired: true, Tags: ["collision_shulker", "has_hitbox"]}], Tags: ["collision", "sl_shu_xp", "sl_shu_yp", "sl_shu_zp", "temp_collision"]}
effect give @e[tag=collision_shulker] invisibility infinite 0 true
effect give @e[tag=collision_shulker] resistance infinite 5 true
execute store result storage slm:collision/size scale_half double 0.00001 run data get entity @s transformation.scale[0] 50000
execute store result storage slm:collision/size scale_quarter double 0.00001 run data get entity @s transformation.scale[0] 25000
execute store result storage slm:collision/size scale_half_quarter double 0.00001 run data get entity @s transformation.scale[0] 12500
function slm:private/collision/position.temp with storage slm:collision/size