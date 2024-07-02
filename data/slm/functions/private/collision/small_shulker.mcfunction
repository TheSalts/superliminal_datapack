summon block_display 0 0 0 {Passengers: [{id: "shulker", Silent: true, NoAI: true, Invulnerable: true, PersistenceRequired: true, Tags: ["collision_shulker", "has_hitbox"]}], Tags: ["collision", "small"]}
effect give @e[tag=collision_shulker] invisibility infinite 0 true
effect give @e[tag=collision_shulker] resistance infinite 5 true
function slm:private/collision/small.move