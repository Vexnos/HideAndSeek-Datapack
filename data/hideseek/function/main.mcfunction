function hideseek:spectator
function hideseek:hiderdeaths
execute if score #mountsEnabled mountsEnabled matches 1 run function hideseek:mounts
function hideseek:lobby/teleport
function hideseek:glowing
function hideseek:balancing
function hideseek:minions
execute if score #raycastEnabled raycastEnabled matches 1 run function hideseek:raycast
execute as @a[team=1,tag=!notswap,scores={deaths=1..}] run function hideseek:events/calculateswap

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