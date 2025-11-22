# Increase a global scoreboard of out players
execute as @a[team=1,tag=!out] if score @s deaths matches 1.. run scoreboard players add out out 1

# Give dead hiders the 'Out' Tag
execute as @a[team=1,tag=!out] if score @s deaths matches 1.. run tag @s add out

# Seeker Respawn Invincibility
execute as @a[team=2,scores={deaths=1..}] run schedule function hideseek:seekerdeath 1t

# Kill volumes on unique maps
execute if score tartarus Tartarus matches 1.. run execute as @a[team=1,x=-143,y=77,z=2432,dx=175,dy=90,dz=175] run damage @s 10 minecraft:outside_border
execute if score ataraxia Ataraxia matches 1.. run execute as @a[team=1,x=44,y=245,z=-805,dx=300,dy=90,dz=300] run damage @s 999 minecraft:outside_border
execute if score ataraxia Ataraxia matches 1.. run execute as @a[team=1,x=44,y=0,z=-805,dx=300,dy=70,dz=300] run damage @s 999 minecraft:outside_border
execute if score tempus Tempus matches 1.. run execute as @a[team=1,x=-3507,y=65,z=1161,dx=160,dy=50,dz=160] run damage @s 1.5 minecraft:outside_border
execute in the_end if score end End matches 1.. run execute as @a[team=1,x=-1228,y=230,z=-793,dx=300,dy=900,dz=300] run damage @s 4 minecraft:outside_border
kill @e[gamemode=!spectator,gamemode=!creative,x=199,y=70,z=2129,dx=550,dy=106,dz=550]

# Check if the value of dead players matches the value of hiders, if they match, all Hiders are out and the game needs to reset
execute if score out out >= hiders hiding run function hideseek:reset

# Replace hotbar slots in players' inventories
# execute unless score ataraxia Ataraxia matches 1.. run execute unless score hoa HOA matches 1.. run execute unless score end End matches 1.. run item replace entity @a[team=1] hotbar.8 with firework_rocket{CanPlaceOn:["minecraft:stone","minecraft:grass_block","minecraft:dirt","minecraft:cobblestone","minecraft:stone_bricks","minecraft:coarse_dirt","minecraft:jungle_leaves","minecraft:birch_leaves","minecraft:oak_leaves"]} 1
# execute unless score pavlopetri Pavlopetri matches 1 unless score hindenburg Hindenburg matches 1 run item replace entity @a[team=2] hotbar.8 with chorus_fruit[enchantment_glint_override=true]
execute unless score pavlopetri Pavlopetri matches 1 run item replace entity @a[team=2] hotbar.6 with ender_pearl[enchantment_glint_override=true,rarity=epic]
execute unless score end End matches 1.. unless score hoa HOA matches 1.. unless score ataraxia Ataraxia matches 1.. unless score pavlopetri Pavlopetri matches 1 unless score passtwin Passtwin matches 1 run item replace entity @a[team=2] hotbar.7 with trident[enchantments={impaling:5,channeling:1},unbreakable={},custom_name={"text":"Grappling Hook","color":"aqua","italic":false}]

# Clear Spectral Arrows from Seekers to stop them teleporting Hiders to them
clear @a[team=2] spectral_arrow

# Superjump ability effects and sounds
execute at @a[nbt={active_effects:[{id:"minecraft:levitation"}]}] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 100 2
execute at @a[nbt={active_effects:[{id:"minecraft:levitation"}]}] run particle minecraft:portal ~ ~ ~ 1 1 1 0 200 normal

# Teleport players going under Biggerton back to the spawn point
execute if score biggerton Biggerton matches 1.. as @a[tag=!out,x=-496,y=63,z=-1442,dx=210,dy=-100,dz=210] run tp @s @e[tag=start,limit=1]