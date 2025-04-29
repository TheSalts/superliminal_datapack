# Tellraw the AABB max and min scores for entities with tags "target" and "plate"

tellraw @a [{"text":"Target AABB Max: "},{"score":{"name":"@n[tag=target,limit=1]","objective":"AABB.max.x"}},{"text":", "},{"score":{"name":"@n[tag=target,limit=1]","objective":"AABB.max.y"}},{"text":", "},{"score":{"name":"@n[tag=target,limit=1]","objective":"AABB.max.z"}},{"text":" | Min: "},{"score":{"name":"@n[tag=target,limit=1]","objective":"AABB.min.x"}},{"text":", "},{"score":{"name":"@n[tag=target,limit=1]","objective":"AABB.min.y"}},{"text":", "},{"score":{"name":"@n[tag=target,limit=1]","objective":"AABB.min.z"}}]

tellraw @a [{"text":"Plate AABB Max: "},{"score":{"name":"@n[tag=plate,limit=1]","objective":"AABB.max.x"}},{"text":", "},{"score":{"name":"@n[tag=plate,limit=1]","objective":"AABB.max.y"}},{"text":", "},{"score":{"name":"@n[tag=plate,limit=1]","objective":"AABB.max.z"}},{"text":" | Min: "},{"score":{"name":"@n[tag=plate,limit=1]","objective":"AABB.min.x"}},{"text":", "},{"score":{"name":"@n[tag=plate,limit=1]","objective":"AABB.min.y"}},{"text":", "},{"score":{"name":"@n[tag=plate,limit=1]","objective":"AABB.min.z"}}]

# Check if target's max coordinates are greater than plate's min coordinates (overlap condition)
    execute if score @n[tag=target,limit=1] AABB.max.x >= @n[tag=plate,limit=1] AABB.min.x run tellraw @a [{"text":"Hitbox touching on X axis"}]
    execute if score @n[tag=target,limit=1] AABB.max.y >= @n[tag=plate,limit=1] AABB.min.y run tellraw @a [{"text":"Hitbox touching on Y axis"}]
    execute if score @n[tag=target,limit=1] AABB.max.z >= @n[tag=plate,limit=1] AABB.min.z run tellraw @a [{"text":"Hitbox touching on Z axis"}]

# Also check the reverse direction (plate's max >= target's min)
    execute if score @n[tag=plate,limit=1] AABB.max.x >= @n[tag=target,limit=1] AABB.min.x run tellraw @a [{"text":"Hitbox touching on X axis (reverse)"}]
    execute if score @n[tag=plate,limit=1] AABB.max.y >= @n[tag=target,limit=1] AABB.min.y run tellraw @a [{"text":"Hitbox touching on Y axis (reverse)"}]
    execute if score @n[tag=plate,limit=1] AABB.max.z >= @n[tag=target,limit=1] AABB.min.z run tellraw @a [{"text":"Hitbox touching on Z axis (reverse)"}]

