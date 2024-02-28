execute as @a[team=1,tag=!out] if score @s deaths matches 1.. run scoreboard players add out out 1
execute as @a[team=1,tag=!out] if score @s deaths matches 1.. run tag @s add out
execute if score tartarus Tartarus matches 1.. run execute as @a[team=1,x=-143,y=77,z=2432,dx=175,dy=90,dz=175] run damage @s 1.5 minecraft:outside_border
execute if score ataraxia Ataraxia matches 1.. run execute as @a[team=1,x=44,y=245,z=-805,dx=300,dy=90,dz=300] run damage @s 999 minecraft:outside_border
execute if score ataraxia Ataraxia matches 1.. run execute as @a[team=1,x=44,y=51,z=-805,dx=300,dy=50,dz=300] run damage @s 999 minecraft:outside_border
execute if score tempus Tempus matches 1.. run execute as @a[team=1,x=-3507,y=65,z=1161,dx=160,dy=50,dz=160] run damage @s 1.5 minecraft:outside_border
execute if score end End matches 1.. run execute as @a[team=1,x=-1096,y=215,z=-575,dx=40,dy=40,dz=40] run damage @s 2 minecraft:outside_border
execute if score out out >= hiders hiding run function hideseek:reset
execute unless score ataraxia Ataraxia matches 1.. run execute unless score hoa HOA matches 1.. run item replace entity @a[team=1] hotbar.8 with firework_rocket{CanPlaceOn:["minecraft:stone","minecraft:grass_block","minecraft:dirt","minecraft:cobblestone","minecraft:stone_bricks","minecraft:coarse_dirt","minecraft:jungle_leaves","minecraft:birch_leaves","minecraft:oak_leaves"]} 1