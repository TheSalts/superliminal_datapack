tag @s add small.target
summon block_display ~ -100 ~ {Passengers: [{id: "shulker",active_effects:[{id:"invisibility",amplifier:1,show_particles:false,duration:-1}], Silent: true, NoAI: true, Invulnerable: true, PersistenceRequired: true, Tags: ["collision_shulker", "has_hitbox"]}], Tags: ["collision", "small", "temp_collision"]}
execute as @e[tag=collision_shulker,type=shulker] run function slm:_internal/private.collision.small_shulker
function slm:private/collision/small.move
