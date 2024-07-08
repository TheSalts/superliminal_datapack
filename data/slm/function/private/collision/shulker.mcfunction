summon block_display ~ ~ ~ {Passengers: [{id: "shulker", Silent: true, NoAI: true, Invulnerable: true, PersistenceRequired: true, Tags: ["collision_shulker", "has_hitbox"]}], Tags: ["collision", "sl_shu_xn", "sl_shu_yn", "sl_shu_zn"]}
summon block_display ~ ~ ~ {Passengers: [{id: "shulker", Silent: true, NoAI: true, Invulnerable: true, PersistenceRequired: true, Tags: ["collision_shulker", "has_hitbox"]}], Tags: ["collision", "sl_shu_xn", "sl_shu_yn", "sl_shu_zp"]}
summon block_display ~ ~ ~ {Passengers: [{id: "shulker", Silent: true, NoAI: true, Invulnerable: true, PersistenceRequired: true, Tags: ["collision_shulker", "has_hitbox"]}], Tags: ["collision", "sl_shu_xn", "sl_shu_yp", "sl_shu_zn"]}
summon block_display ~ ~ ~ {Passengers: [{id: "shulker", Silent: true, NoAI: true, Invulnerable: true, PersistenceRequired: true, Tags: ["collision_shulker", "has_hitbox"]}], Tags: ["collision", "sl_shu_xn", "sl_shu_yp", "sl_shu_zp"]}
summon block_display ~ ~ ~ {Passengers: [{id: "shulker", Silent: true, NoAI: true, Invulnerable: true, PersistenceRequired: true, Tags: ["collision_shulker", "has_hitbox"]}], Tags: ["collision", "sl_shu_xp", "sl_shu_yn", "sl_shu_zn"]}
summon block_display ~ ~ ~ {Passengers: [{id: "shulker", Silent: true, NoAI: true, Invulnerable: true, PersistenceRequired: true, Tags: ["collision_shulker", "has_hitbox"]}], Tags: ["collision", "sl_shu_xp", "sl_shu_yn", "sl_shu_zp"]}
summon block_display ~ ~ ~ {Passengers: [{id: "shulker", Silent: true, NoAI: true, Invulnerable: true, PersistenceRequired: true, Tags: ["collision_shulker", "has_hitbox"]}], Tags: ["collision", "sl_shu_xp", "sl_shu_yp", "sl_shu_zn"]}
summon block_display ~ ~ ~ {Passengers: [{id: "shulker", Silent: true, NoAI: true, Invulnerable: true, PersistenceRequired: true, Tags: ["collision_shulker", "has_hitbox"]}], Tags: ["collision", "sl_shu_xp", "sl_shu_yp", "sl_shu_zp"]}
effect give @e[tag=collision_shulker,type=shulker] invisibility infinite 0 true
effect give @e[tag=collision_shulker,type=shulker] resistance infinite 5 true
function slm:private/collision/move
