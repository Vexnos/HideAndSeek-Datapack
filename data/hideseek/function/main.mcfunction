execute as @a[team=1,scores={deaths=1..},tag=!out] run function hideseek:hiderdeaths
execute as @a[team=2,scores={deaths=1..}] run function hideseek:seekerdeath
execute if score #mountsEnabled mountsEnabled matches 1 run function hideseek:mounts
function hideseek:lobby/teleport
function hideseek:glowing
function hideseek:balancing
function hideseek:minions
execute if score #raycastEnabled raycastEnabled matches 1 run function hideseek:raycast
execute as @a[team=1,tag=!notswap,scores={deaths=1..}] run function hideseek:events/calculateswap

# Kill volumes on unique maps
execute if score tartarus Tartarus matches 1.. run execute as @a[team=1,x=-143,y=77,z=2432,dx=175,dy=90,dz=175] run damage @s 10 minecraft:outside_border
execute if score ataraxia Ataraxia matches 1.. run execute as @a[team=1,x=44,y=245,z=-805,dx=300,dy=90,dz=300] run damage @s 999 minecraft:outside_border
execute if score ataraxia Ataraxia matches 1.. run execute as @a[team=1,x=44,y=0,z=-805,dx=300,dy=70,dz=300] run damage @s 999 minecraft:outside_border
execute if score tempus Tempus matches 1.. run execute as @a[team=1,x=-3507,y=65,z=1161,dx=160,dy=50,dz=160] run damage @s 1.5 minecraft:outside_border
execute in the_end if score end End matches 1.. run execute as @a[team=1,x=-1228,y=230,z=-793,dx=300,dy=900,dz=300] run damage @s 4 minecraft:outside_border
kill @e[gamemode=!spectator,gamemode=!creative,x=199,y=70,z=2129,dx=550,dy=106,dz=550]

# Imperial Star Destroyer Kill Barrier
execute if score imperator Imperator matches 1 if score #game gameRunning matches 1 in hideseek:imperator as @a[tag=!out,gamemode=adventure,team=1,x=-1427,y=715,z=-148,dx=300,dy=-100,dz=300] run damage @s 1.5 outside_border

# Castle Kill Barrier
execute if score castle Castle matches 1 if score #game gameRunning matches 1 in hideseek:castle as @a[tag=!out,gamemode=adventure,team=1,x=91,y=102,z=-130,dx=110,dy=-200,dz=110] run damage @s 10 outside_border

# Mannequins Moving
# execute if entity @e[type=mannequin,tag=!NoKill] run function hideseek:mannequin

# Clear players items from the Lobby
function hideseek:lobby/clear

# Enable Triggers
scoreboard players enable @a[tag=admin] start
scoreboard players enable @a[tag=admin] seek
scoreboard players enable @a[tag=admin] reset
scoreboard players enable @a[tag=admin] border1
scoreboard players enable @a[tag=admin] border2
scoreboard players enable @a[tag=admin] creepers
scoreboard players enable @a[tag=admin] killerbunnies
scoreboard players enable @a[tag=admin] initguardians
scoreboard players enable @a[tag=admin] wardens
scoreboard players enable @a[tag=admin] zombies
scoreboard players enable @a[tag=admin] initswap
scoreboard players enable @a[tag=admin] breezes
scoreboard players enable @a[tag=admin] absdoom
scoreboard players enable @a[tag=admin] disableteleports
scoreboard players enable @a[tag=admin] phantoms
scoreboard players enable @a[tag=admin] wither

# Triggers
execute as @a[tag=admin,scores={start=1..}] run function hideseek:triggers
execute as @a[tag=admin,scores={seek=1..}] run function hideseek:triggers
execute as @a[tag=admin,scores={reset=1..}] run function hideseek:triggers
execute as @a[tag=admin,scores={border1=1..}] run function hideseek:triggers
execute as @a[tag=admin,scores={border2=1..}] run function hideseek:triggers
execute as @a[tag=admin,scores={creepers=1..}] run function hideseek:triggers
execute as @a[tag=admin,scores={killerbunnies=1..}] run function hideseek:triggers
execute as @a[tag=admin,scores={initguardians=1..}] run function hideseek:triggers
execute as @a[tag=admin,scores={wardens=1..}] run function hideseek:triggers
execute as @a[tag=admin,scores={zombies=1..}] run function hideseek:triggers
execute as @a[tag=admin,scores={initswap=1..}] run function hideseek:triggers
execute as @a[tag=admin,scores={breezes=1..}] run function hideseek:triggers
execute as @a[tag=admin,scores={absdoom=1..}] run function hideseek:triggers
execute as @a[tag=admin,scores={disableteleports=1..}] run function hideseek:triggers
execute as @a[tag=admin,scores={phantoms=1..}] run function hideseek:triggers
execute as @a[tag=admin,scores={wither=1..}] run function hideseek:triggers

# Lobby teleports
execute unless score #game gameRunning matches 1 in hideseek:lobby run function hideseek:lobby/west
execute unless score #game gameRunning matches 1 in hideseek:lobby run function hideseek:lobby/north
execute unless score #game gameRunning matches 1 in hideseek:lobby run function hideseek:lobby/south
execute unless score #game gameRunning matches 1 in hideseek:lobby run function hideseek:lobby/east
execute unless score #game gameRunning matches 1 in hideseek:lobby run function hideseek:lobby/dark

# Holy Hand Grenade
execute if score #game gameRunning matches 1 run function hideseek:holy_hand_grenade

# Check if the value of dead players matches the value of hiders, if they match, all Hiders are out and the game needs to reset
execute if score out out >= hiders hiding run function hideseek:reset

# Replace hotbar slots in players' inventories
# execute unless score ataraxia Ataraxia matches 1.. run execute unless score hoa HOA matches 1.. run execute unless score end End matches 1.. run item replace entity @a[team=1] hotbar.8 with firework_rocket{CanPlaceOn:["minecraft:stone","minecraft:grass_block","minecraft:dirt","minecraft:cobblestone","minecraft:stone_bricks","minecraft:coarse_dirt","minecraft:jungle_leaves","minecraft:birch_leaves","minecraft:oak_leaves"]} 1
# execute unless score pavlopetri Pavlopetri matches 1 unless score hindenburg Hindenburg matches 1 run item replace entity @a[team=2] hotbar.8 with chorus_fruit[enchantment_glint_override=true]
execute unless score pavlopetri Pavlopetri matches 1 run item replace entity @a[team=2] hotbar.6 with ender_pearl[enchantment_glint_override=true,rarity=epic,use_cooldown={seconds:0.05}]
execute unless score end End matches 1.. unless score hoa HOA matches 1.. unless score ataraxia Ataraxia matches 1.. unless score pavlopetri Pavlopetri matches 1 unless score passtwin Passtwin matches 1 run item replace entity @a[team=2] hotbar.7 with trident[enchantments={impaling:5,lunge:10,channeling:1,"hideseek:dismount":1},unbreakable={},custom_name={"text":"Grappling Hook","color":"aqua","italic":false},tooltip_display={hidden_components:["minecraft:enchantments"]},piercing_weapon={deals_knockback:false,dismounts:false}]

# Clear Spectral Arrows from Seekers to stop them teleporting Hiders to them
clear @a[team=2] spectral_arrow

# Superjump ability effects and sounds
# execute at @a[nbt={active_effects:[{id:"minecraft:levitation"}]}] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 100 2
execute at @a[nbt={active_effects:[{id:"minecraft:levitation"}]}] run particle minecraft:sonic_boom ~ ~ ~ 0.1 0.1 0.1 1 10 normal

# Teleport players going under Biggerton back to the spawn point
execute if score biggerton Biggerton matches 1.. as @a[tag=!out,x=-496,y=63,z=-1442,dx=210,dy=-100,dz=210] run tp @s @e[tag=start,limit=1]