# Superliminal Datapack (Forced Perspective)

[한국어 README (KO-KR)](README-KR.md)

This is the **Superliminal Datapack**, a Minecraft datapack inspired by the core mechanic of the Steam game _[Superliminal](https://store.steampowered.com/app/1049410/Superliminal/)_, implementing **Forced Perspective**

## Features

- **Gravity Simulation**: Apply gravity to entities and blocks with adjustable acceleration.
- **Forced Perspective**: Create the illusion of depth by dynamically resizing blocks and entities based on the player's viewpoint and interactions.
- **Hitbox Collision Detection**: Handles the hitbox of custom blocks using AABB.

## Showcase

[Youtube](https://youtu.be/0aqticgqvFc?si=7EEKlqR5OXqLKnSs)

## Installation

1. Download the datapack from [Releases](https://github.com/TheSalts/superliminal_datapack/releases).
2. Place the `SLM` folder and `gm` into the `datapacks` directory of your Minecraft world save.
3. Start or reload the world to activate the datapack.

## How to use

1. Only one player should have the `player` tag. Use `/tag @s add player`
2. Use `/function slm:private/setting/create_block` to summon a block.
3. To remove a block, hold any sword and left-click on it.

## Dependncies (Included in Releases)

[gibbsly/gm](https://github.com/gibbsly/gm)

## Uninstall

Use

```mcfunction
/function slm:uninstall
```

and remove `SLM` & `gm` from `datapacks` folder

## License

This project is licensed under the [MIT License](LICENSE).

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests to improve the datapack.
