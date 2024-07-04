summon block_display ~ -100 ~ {Passengers: [{id: "shulker",active_effects:[{id:"invisibility",amplifier:1,show_particles:false,duration:-1}], Silent: true, NoAI: true, Invulnerable: true, PersistenceRequired: true, Tags: ["collision_shulker", "has_hitbox"]}], Tags: ["collision", "small", "temp_collision"]}
effect give @e[tag=collision_shulker,type=shulker] invisibility infinite 1 true
effect give @e[tag=collision_shulker,type=shulker] resistance infinite 5 true
function slm:private/collision/small.move
