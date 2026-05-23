#
# Description: Main
# Called by: minecraft:tick
# Entity @s: None
#
# Run separate functions depending if tag mode is enabled
execute unless score tag settings matches 1 as @a[team=1,scores={deaths=1..},tag=!out] run function hideseek:hider/hiderdeaths
execute if score tag settings matches 1 as @a[team=1,scores={deaths=1..},tag=!out] run function hideseek:hider/tagdeath

# To be sorted
execute as @a[team=2,scores={deaths=1..}] run function hideseek:seeker/seekerdeath
execute if score gameRunning settings matches 1 if score mounts settings matches 1 if score mounts events matches 1 run function hideseek:mounts
function hideseek:lobby/teleport
execute if score gameRunning settings matches 1 run function hideseek:glowing
execute if score gameRunning settings matches 1 run function hideseek:balancing
execute if score gameRunning settings matches 1 run function hideseek:minions
execute if score raycast settings matches 1 run function hideseek:raycast
execute as @a[tag=!notswap,tag=out] run function hideseek:events/calculateswap

# Kill volumes on unique maps
execute if score gameRunning settings matches 1 run function hideseek:killvolumes

# Mannequins Moving
# execute if entity @e[type=mannequin,tag=!NoKill] run function hideseek:mannequin

# Generic Lobby Functions
execute unless score gameRunning settings matches 1 run function hideseek:lobby/generic

# Enable Triggers
scoreboard players enable @a[tag=admin] start
scoreboard players enable @a[tag=admin] seek
scoreboard players enable @a[tag=admin] reset
scoreboard players enable @a[tag=admin] border1
scoreboard players enable @a[tag=admin] border2
scoreboard players enable @a[tag=admin] finalminute
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
execute as @a[tag=admin,scores={finalminute=1..}] run function hideseek:triggers
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
execute unless score gameRunning settings matches 1 in hideseek:lobby run function hideseek:lobby/west
execute unless score gameRunning settings matches 1 in hideseek:lobby run function hideseek:lobby/north
execute unless score gameRunning settings matches 1 in hideseek:lobby run function hideseek:lobby/south
execute unless score gameRunning settings matches 1 in hideseek:lobby run function hideseek:lobby/east
execute unless score gameRunning settings matches 1 in hideseek:lobby run function hideseek:lobby/dark

# Holy Hand Grenade
execute if score gameRunning settings matches 1 run function hideseek:holy_hand_grenade

# Check if the value of dead players matches the value of hiders, if they match, all Hiders are out and the game needs to reset
execute if score out players >= hiding players run function hideseek:reset

# Replace hotbar slots in players' inventories
# execute unless score ataraxia map matches 1.. run execute unless score HOA map matches 1.. run execute unless score end map matches 1.. run item replace entity @a[team=1] hotbar.8 with firework_rocket{CanPlaceOn:["minecraft:stone","minecraft:grass_block","minecraft:dirt","minecraft:cobblestone","minecraft:stone_bricks","minecraft:coarse_dirt","minecraft:jungle_leaves","minecraft:birch_leaves","minecraft:oak_leaves"]} 1
# execute unless score pavlopetri map matches 1 unless score hindenburg map matches 1 run item replace entity @a[team=2] hotbar.8 with chorus_fruit[enchantment_glint_override=true]
execute unless score pavlopetri map matches 1 run item replace entity @a[team=2] hotbar.6 with ender_pearl[enchantment_glint_override=true,rarity=epic,use_cooldown={seconds:0.05}]
execute unless score end map matches 1.. unless score HOA map matches 1.. unless score ataraxia map matches 1.. unless score pavlopetri map matches 1 unless score passTwin map matches 1 run item replace entity @a[team=2] hotbar.7 with trident[enchantments={impaling:5,lunge:10,channeling:1,"hideseek:dismount":1},unbreakable={},custom_name={"text":"Grappling Hook","color":"aqua","italic":false},tooltip_display={hidden_components:["minecraft:enchantments"]},piercing_weapon={deals_knockback:false,dismounts:false}]

# Clear Spectral Arrows from Seekers to stop them teleporting Hiders to them
clear @a[team=2] spectral_arrow

# Superjump ability effects and sounds
# execute at @a[nbt={active_effects:[{id:"minecraft:levitation"}]}] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 100 2
execute at @a[nbt={active_effects:[{id:"minecraft:levitation"}]}] run particle minecraft:sonic_boom ~ ~ ~ 0.1 0.1 0.1 1 10 normal

# Teleport players going under Biggerton back to the spawn point
execute if score biggerton map matches 1.. as @a[tag=!out,x=-496,y=63,z=-1442,dx=210,dy=-100,dz=210] run tp @s @e[tag=start,limit=1]

# Parkour Reward
execute in hideseek:lobby if score gameRunning settings matches 0 as @a[scores={bellsRung=1..}] run function hideseek:lobby/parkour_reward