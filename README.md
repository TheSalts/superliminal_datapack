# Superliminal Datapack (Forced Perspective)

[한국어 README (KO-KR)](README-KR.md)

This is the **Superliminal Datapack**, a Minecraft datapack inspired by the core mechanic of the Steam game _[Superliminal](https://store.steampowered.com/app/1049410/Superliminal/)_, implementing **Forced Perspective**

## Technical Implementation Method

The technical implementation of Forced Perspective can be broadly divided into two parts.

***

### 1. Grabbing/Placing the Block

Summon a block display with passenger interaction.

When this interaction is clicked, raycasting begins. With each step of the raycast, the block's size is adjusted, and then it is checked to see if the block has hit a wall.

***

### 2. Resizing the Block

When the player clicks the interaction, the distance between the player and the block, as well as the block's size, are saved. Let's call this distance $d$ and the size $s$.

During each step of the raycast, the block's position moves slightly backward from the player's point of view. The new distance between the player and the block after it has moved is saved. Let's call this $d_c$.

To determine the block's new size, you first need to find the size ratio $r$. The formula to find it is as follows:

$$r = \frac{d_c}{d}$$

Now, by multiplying the size ratio $r$ by the original size $s$, you get the adjusted block size.

***

## Showcase

[Youtube](https://youtu.be/0aqticgqvFc?si=7EEKlqR5OXqLKnSs)

## Installation

1. Download the datapack from `Code -> Download ZIP`
2. Place the downloaded file into the `datapacks` directory of your Minecraft world save.
3. Start or `/reload` the world to activate the datapack.

## How to use

1. Only one player should have the `player` tag. Use `/tag @s add player`
2. Use `/function slm:setting/create_block` to summon a block.
3. To remove a block, hold any sword and left-click on it.

## Used Library

[gibbsly/gm](https://github.com/gibbsly/gm)

## Uninstall

Use

```mcfunction
/function slm:uninstall
```

and remove datapack from `datapacks` folder

## License

This project is licensed under the [MIT License](LICENSE).

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests to improve the datapack.
