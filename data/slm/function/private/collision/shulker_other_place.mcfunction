execute if function slm:private/distance/check_too_small_shulker run return run function slm:private/collision/small_shulker
tag @s remove small.target
summon block_display ~ -100 ~ {Passengers: [{id: "shulker", Silent: true, NoAI: true, Invulnerable: true, PersistenceRequired: true, Tags: ["collision_shulker", "has_hitbox"]}], Tags: ["collision", "sl_shu_xn", "sl_shu_yn", "sl_shu_zn", "temp_collision"]}
summon block_display ~ -100 ~ {Passengers: [{id: "shulker", Silent: true, NoAI: true, Invulnerable: true, PersistenceRequired: true, Tags: ["collision_shulker", "has_hitbox"]}], Tags: ["collision", "sl_shu_xn", "sl_shu_yn", "sl_shu_zp", "temp_collision"]}
summon block_display ~ -100 ~ {Passengers: [{id: "shulker", Silent: true, NoAI: true, Invulnerable: true, PersistenceRequired: true, Tags: ["collision_shulker", "has_hitbox"]}], Tags: ["collision", "sl_shu_xn", "sl_shu_yp", "sl_shu_zn", "temp_collision"]}
summon block_display ~ -100 ~ {Passengers: [{id: "shulker", Silent: true, NoAI: true, Invulnerable: true, PersistenceRequired: true, Tags: ["collision_shulker", "has_hitbox"]}], Tags: ["collision", "sl_shu_xn", "sl_shu_yp", "sl_shu_zp", "temp_collision"]}
summon block_display ~ -100 ~ {Passengers: [{id: "shulker", Silent: true, NoAI: true, Invulnerable: true, PersistenceRequired: true, Tags: ["collision_shulker", "has_hitbox"]}], Tags: ["collision", "sl_shu_xp", "sl_shu_yn", "sl_shu_zn", "temp_collision"]}
summon block_display ~ -100 ~ {Passengers: [{id: "shulker", Silent: true, NoAI: true, Invulnerable: true, PersistenceRequired: true, Tags: ["collision_shulker", "has_hitbox"]}], Tags: ["collision", "sl_shu_xp", "sl_shu_yn", "sl_shu_zp", "temp_collision"]}
summon block_display ~ -100 ~ {Passengers: [{id: "shulker", Silent: true, NoAI: true, Invulnerable: true, PersistenceRequired: true, Tags: ["collision_shulker", "has_hitbox"]}], Tags: ["collision", "sl_shu_xp", "sl_shu_yp", "sl_shu_zn", "temp_collision"]}
summon block_display ~ -100 ~ {Passengers: [{id: "shulker", Silent: true, NoAI: true, Invulnerable: true, PersistenceRequired: true, Tags: ["collision_shulker", "has_hitbox"]}], Tags: ["collision", "sl_shu_xp", "sl_shu_yp", "sl_shu_zp", "temp_collision"]}
execute as @e[tag=collision_shulker,type=shulker] run function slm:_internal/private/collision/_shulker_other_place
execute store result storage slm:collision/size scale_half double 0.00001 run data get entity @s transformation.scale[0] 50000
execute store result storage slm:collision/size scale_quarter double 0.00001 run data get entity @s transformation.scale[0] 25000
execute store result storage slm:collision/size scale_half_quarter double 0.00001 run data get entity @s transformation.scale[0] 12500
function slm:private/collision/position.temp with storage slm:collision/size
