execute as @a[team=1,tag=!out] if score @s deaths matches 1.. run scoreboard players add out out 1
execute as @a[team=1,tag=!out] if score @s deaths matches 1.. run tag @s add out
execute if score tartarus Tartarus matches 1.. run execute as @a[team=1,x=-143,y=77,z=2432,dx=175,dy=90,dz=175] run damage @s 1.5 minecraft:outside_border
execute if score ataraxia Ataraxia matches 1.. run execute as @a[team=1,x=44,y=245,z=-805,dx=300,dy=90,dz=300] run damage @s 999 minecraft:outside_border
execute if score ataraxia Ataraxia matches 1.. run execute as @a[team=1,x=44,y=51,z=-805,dx=300,dy=50,dz=300] run damage @s 999 minecraft:outside_border
execute if score tempus Tempus matches 1.. run execute as @a[team=1,x=-3507,y=65,z=1161,dx=160,dy=50,dz=160] run damage @s 1.5 minecraft:outside_border
execute in the_end if score end End matches 1.. run execute as @a[team=1,x=-1228,y=230,z=-793,dx=300,dy=900,dz=300] run damage @s 4 minecraft:outside_border
execute if score out out >= hiders hiding run function hideseek:reset
# execute unless score ataraxia Ataraxia matches 1.. run execute unless score hoa HOA matches 1.. run execute unless score end End matches 1.. run item replace entity @a[team=1] hotbar.8 with firework_rocket{CanPlaceOn:["minecraft:stone","minecraft:grass_block","minecraft:dirt","minecraft:cobblestone","minecraft:stone_bricks","minecraft:coarse_dirt","minecraft:jungle_leaves","minecraft:birch_leaves","minecraft:oak_leaves"]} 1
item replace entity @a[team=2] hotbar.8 with chorus_fruit[enchantment_glint_override=true]
item replace entity @a[team=2] hotbar.7 with trident[enchantments={levels:{impaling:5,channeling:1}},unbreakable={},custom_name='{"text":"Grappling Hook","color":"aqua","italic":false}']
clear @a[team=1] trident
clear @a[team=2] spectral_arrow
execute as @a[team=2] if score @s deaths matches 1.. run function hideseek:seekereffects