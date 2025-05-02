# Startup Guide

1. Run the `hideseek:emergency` function to spawn the necessary Armor Stands for the game to function. (One Armor stand has the `lobby` tag, the other has the `start` tag).
2. Place the `start` Armor Stand where you want players to spawn in the map and place the `lobby` Armor Stand where you want players to teleport to when the game is not running and use `/effect clear @e[type=armor_stand] glowing` to remove the debug glowing. (Take a look at the functions under the `teleport` namespace to see how I use commands to change maps).
3. Forceload the chunks the armour stands are in using `/forceload add ~ ~`
4. If you want to use multiple areas within a world for different maps (custom dimensions are supported), you will need to teleport these armour stands around (multiple armour stands with the same tag will break the game).