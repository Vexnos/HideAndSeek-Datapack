function hideseek:spectator
function hideseek:hiderdeaths
execute if score #mountsEnabled mountsEnabled matches 1 run function hideseek:mounts
function hideseek:lobby/teleport
function hideseek:glowing
function hideseek:balancing
function hideseek:minions
function hideseek:killroguewindcharge
execute if score #raycastEnabled raycastEnabled matches 1 run function hideseek:raycast
execute as @a[team=1,tag=!notswap,scores={deaths=1..}] run function hideseek:events/calculateswap

# Clear players items from the Lobby
execute in minecraft:overworld run clear @a[x=-1455,y=191,z=-685,dx=5,dy=10,dz=2,gamemode=adventure]
execute in minecraft:overworld run clear @a[x=-1457,y=207,z=-703,dx=8,dy=7,dz=8,gamemode=adventure]

execute in minecraft:overworld run kill @e[type=ender_pearl,x=-1455,y=191,z=-685,dx=5,dy=10,dz=2]
execute in minecraft:overworld run kill @e[type=ender_pearl,x=-1457,y=207,z=-703,dx=8,dy=7,dz=8]

execute in minecraft:overworld run kill @e[type=arrow,x=-1455,y=191,z=-685,dx=5,dy=10,dz=2]
execute in minecraft:overworld run kill @e[type=arrow,x=-1457,y=207,z=-703,dx=8,dy=7,dz=8]

# Enable Triggers
scoreboard players enable @a[tag=admin] start
scoreboard players enable @a[tag=admin] seek
scoreboard players enable @a[tag=admin] reset
scoreboard players enable @a[tag=admin] border1
scoreboard players enable @a[tag=admin] border2

# Triggers
execute as @a[tag=admin,scores={start=1..}] run function hideseek:triggers
execute as @a[tag=admin,scores={seek=1..}] run function hideseek:triggers
execute as @a[tag=admin,scores={reset=1..}] run function hideseek:triggers
execute as @a[tag=admin,scores={border1=1..}] run function hideseek:triggers
execute as @a[tag=admin,scores={border2=1..}] run function hideseek:triggers