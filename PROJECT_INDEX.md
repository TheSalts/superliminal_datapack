# Project Index: Superliminal Datapack (lucid)

Generated: 2026-01-18

## Overview

A Minecraft datapack implementing **Forced Perspective** mechanics inspired by the Steam game Superliminal. Players can grab, resize, and place blocks using perspective-based illusion mechanics.

**Pack Format:** 88 (Minecraft 1.21+)
**Author:** TheSalt_ (Discord: thesalt_)
**Total Files:** 208

---

## Project Structure

```
lucid/
├── pack.mcmeta              # Pack configuration
├── datapack.config.json     # Build configuration
├── README.md                # English documentation
├── README-KR.md             # Korean documentation
└── data/
    ├── minecraft/tags/function/
    │   ├── load.json        # Load hooks → slm:init, gm:zzz/load
    │   └── tick.json        # Tick hook → slm:tick
    ├── gm/function/         # Math library (gibbsly/gm)
    │   ├── *.mcfunction     # Public math functions
    │   └── zzz/             # Internal helpers
    └── slm/function/        # Main datapack logic
        ├── init.mcfunction  # Initialization
        ├── tick.mcfunction  # Main game loop
        ├── uninstall.mcfunction
        ├── setting/         # Block creation commands
        ├── private/         # Internal functions
        ├── _internal/       # Generated internal functions
        ├── world/           # World-specific logic & chapters
        └── test/            # Testing utilities
```

---

## Namespaces

| Namespace | Purpose |
|-----------|---------|
| `slm` | Main Superliminal logic (collision, resize, gravity, plates) |
| `gm` | Math library - trig, sqrt, distance calculations |
| `minecraft` | Function tags for load/tick hooks |

---

## Entry Points

### Load Functions
- `slm:init` - Initializes scoreboards, entities, forceloads
- `gm:zzz/load` - Sets up math library scoreboards and helper entity

### Tick Function
- `slm:tick` - Main game loop: handles grabbing, placing, collision, gravity, plates

### User Commands
| Command | Description |
|---------|-------------|
| `/function slm:setting/create_block` | Summon a resizable block |
| `/function slm:setting/create_height_plate` | Create height-activated plate |
| `/function slm:setting/create_normal_plate` | Create normal pressure plate |
| `/function slm:setting/create_weight_plate` | Create weight pressure plate |
| `/function slm:setting/create_wall_x` | Create X-axis wall |
| `/function slm:setting/create_wall_z` | Create Z-axis wall |
| `/function slm:uninstall` | Remove all datapack entities/scoreboards |

---

## Core Modules

### Collision System (`slm:private/collision/`)
- **Purpose:** AABB-based collision detection for resizable blocks
- **Key functions:** `calc_aabb`, `get_aabb`, `move`, `position`, `shulker`
- **Uses:** Shulker entities for hitbox collision

### Resize System (`slm:private/resize/`)
- **Purpose:** Scale blocks based on distance ratio (forced perspective)
- **Key formula:** `new_size = original_size × (current_distance / original_distance)`
- **Key functions:** `resize_target`, `resize_target_interaction`, `original_scale`

### Distance System (`slm:private/distance/`)
- **Purpose:** Calculate player-to-block distances via raycasting
- **Key functions:** `get_distance_1`, `get_distance_3`, `set_pos`

### Gravity System (`slm:private/gravity/`)
- **Purpose:** Apply gravity to blocks when not held
- **Key functions:** `position_set`

### Plate System (`slm:private/plate/`)
- **Purpose:** Pressure plates activated by blocks
- **Key functions:** `press`, `unpress`

### Math Library (`gm:`)
| Function | Description |
|----------|-------------|
| `add`, `subtract`, `multiply`, `divide` | Basic arithmetic |
| `sin`, `cos`, `tan` | Trigonometric functions |
| `arcsin`, `arccos`, `arctan`, `arctan2` | Inverse trig |
| `sqrt`, `square` | Power functions |
| `floor`, `ceil`, `round` | Rounding |
| `distance` | 3D distance calculation |
| `modulo`, `negate`, `reciprocal` | Utilities |

---

## Key Scoreboards

| Objective | Purpose |
|-----------|---------|
| `leftclicked` | Tracks player left-click state |
| `rightclicked` | Tracks player right-click state |
| `raycast` | Raycast distance tracking |
| `gravity` | Block gravity state |
| `AABB.min/max.x/y/z` | Collision bounding boxes |
| `var` | General-purpose variable |
| `const` | Constants (e.g., `zero`) |
| `gm.std` | Math library scoreboard |

---

## Entity Tags

| Tag | Entity Type | Purpose |
|-----|-------------|---------|
| `target` | block_display | Grabbable/resizable block |
| `targetW` | block_display | Currently held block |
| `interaction` | interaction | Click detection hitbox |
| `collision_shulker` | shulker | Collision detection |
| `plate` | block_display | Pressure plate blocks |
| `player` | player | Active player (single-player only) |
| `ratioCalc` | item_display | Helper entity for ratio calculation |
| `distanceCalc` | item_display | Helper entity for distance calculation |

---

## World/Chapter System

The datapack includes a puzzle map with chapters:
- `world/init/` - World initialization
- `world/start_scene/` - Game start sequence
- `world/chap2/` - Chapter 2 puzzles
- `world/chap3/` - Chapter 3 puzzles
- `world/end_scene/` - Game ending

---

## Usage

1. Only one player should have the `player` tag:
   ```
   /tag @s add player
   ```

2. Summon blocks:
   ```
   /function slm:setting/create_block {block:"stone",size:1.0}
   ```

3. Grab blocks: Left-click on interaction hitbox
4. Place blocks: Left-click again to release
5. Remove blocks: Hold any sword and left-click

---

## Dependencies

- **gibbsly/gm** - Math library for trigonometry and distance calculations
  - Source: https://github.com/gibbsly/gm

---

## File Counts by Module

| Directory | Files |
|-----------|-------|
| `slm/function/private/collision/` | 16 |
| `slm/function/private/resize/` | 6 |
| `slm/function/private/distance/` | 6 |
| `slm/function/world/` | 48 |
| `gm/function/` | 47 |

---

## License

MIT License
