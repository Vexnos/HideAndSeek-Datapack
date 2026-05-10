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
execute in hideseek:lobby run clear @a[x=-3,y=170,z=10,dx=6,dy=8,dz=2,gamemode=adventure]
execute in hideseek:lobby run clear @a[x=-2,y=170,z=-1,dx=4,dy=4,dz=4,gamemode=adventure]

execute in hideseek:lobby run kill @e[type=ender_pearl,x=-3,y=170,z=10,dx=6,dy=8,dz=2]
execute in hideseek:lobby run kill @e[type=ender_pearl,x=-2,y=170,z=-1,dx=4,dy=4,dz=4]

execute in hideseek:lobby run kill @e[type=arrow,x=-3,y=170,z=10,dx=6,dy=8,dz=2]
execute in hideseek:lobby run kill @e[type=arrow,x=-2,y=170,z=-1,dx=4,dy=4,dz=4]

# Enable Triggers
scoreboard players enable @a[tag=admin] start
scoreboard players enable @a[tag=admin] seek
scoreboard players enable @a[tag=admin] reset
scoreboard players enable @a[tag=admin] border1
scoreboard players enable @a[tag=admin] border2

# Lobby teleports
execute unless score #game gameRunning matches 1 in hideseek:lobby run function hideseek:lobby/west
execute unless score #game gameRunning matches 1 in hideseek:lobby run function hideseek:lobby/north
execute unless score #game gameRunning matches 1 in hideseek:lobby run function hideseek:lobby/south
execute unless score #game gameRunning matches 1 in hideseek:lobby run function hideseek:lobby/east

# Triggers
execute as @a[tag=admin,scores={start=1..}] run function hideseek:triggers
execute as @a[tag=admin,scores={seek=1..}] run function hideseek:triggers
execute as @a[tag=admin,scores={reset=1..}] run function hideseek:triggers
execute as @a[tag=admin,scores={border1=1..}] run function hideseek:triggers
execute as @a[tag=admin,scores={border2=1..}] run function hideseek:triggers