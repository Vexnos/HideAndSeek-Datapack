execute as @a[team=1,tag=!out] if score @s deaths matches 1.. run scoreboard players add out out 1
execute as @a[team=1,tag=!out] if score @s deaths matches 1.. run tag @s add out
execute if score out out >= hiders hiding run function hideseek:reset
item replace entity @a[team=1] hotbar.8 with firework_rocket{CanPlaceOn:["minecraft:stone","minecraft:grass_block","minecraft:dirt","minecraft:cobblestone","minecraft:stone_bricks","minecraft:coarse_dirt","minecraft:jungle_leaves","minecraft:birch_leaves","minecraft:oak_leaves"]} 1