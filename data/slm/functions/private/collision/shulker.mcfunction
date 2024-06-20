summon block_display ~ ~ ~ {Passengers: [{id: "shulker", Silent: 1, NoAI: 1, Invulnerable: 1, PersistenceRequired: true, Tags: ["collision_shulker"]}], Tags: ["collision", "sl_shu_xn", "sl_shu_yn", "sl_shu_zn"]}
summon block_display ~ ~ ~ {Passengers: [{id: "shulker", Silent: 1, NoAI: 1, Invulnerable: 1, PersistenceRequired: true, Tags: ["collision_shulker"]}], Tags: ["collision", "sl_shu_xn", "sl_shu_yn", "sl_shu_zp"]}
summon block_display ~ ~ ~ {Passengers: [{id: "shulker", Silent: 1, NoAI: 1, Invulnerable: 1, PersistenceRequired: true, Tags: ["collision_shulker"]}], Tags: ["collision", "sl_shu_xn", "sl_shu_yp", "sl_shu_zn"]}
summon block_display ~ ~ ~ {Passengers: [{id: "shulker", Silent: 1, NoAI: 1, Invulnerable: 1, PersistenceRequired: true, Tags: ["collision_shulker"]}], Tags: ["collision", "sl_shu_xn", "sl_shu_yp", "sl_shu_zp"]}
summon block_display ~ ~ ~ {Passengers: [{id: "shulker", Silent: 1, NoAI: 1, Invulnerable: 1, PersistenceRequired: true, Tags: ["collision_shulker"]}], Tags: ["collision", "sl_shu_xp", "sl_shu_yn", "sl_shu_zn"]}
summon block_display ~ ~ ~ {Passengers: [{id: "shulker", Silent: 1, NoAI: 1, Invulnerable: 1, PersistenceRequired: true, Tags: ["collision_shulker"]}], Tags: ["collision", "sl_shu_xp", "sl_shu_yn", "sl_shu_zp"]}
summon block_display ~ ~ ~ {Passengers: [{id: "shulker", Silent: 1, NoAI: 1, Invulnerable: 1, PersistenceRequired: true, Tags: ["collision_shulker"]}], Tags: ["collision", "sl_shu_xp", "sl_shu_yp", "sl_shu_zn"]}
summon block_display ~ ~ ~ {Passengers: [{id: "shulker", Silent: 1, NoAI: 1, Invulnerable: 1, PersistenceRequired: true, Tags: ["collision_shulker"]}], Tags: ["collision", "sl_shu_xp", "sl_shu_yp", "sl_shu_zp"]}
effect give @e[tag=collision_shulker] invisibility infinite 0 true
effect give @e[tag=collision_shulker] resistance infinite 5 true
function slm:private/collision/move