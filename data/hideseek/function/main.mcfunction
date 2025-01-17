function hideseek:spectator
function hideseek:hiderdeaths
execute if score #mountsEnabled mountsEnabled matches 1 run function hideseek:mounts
function lobby:teleport
function hideseek:glowing
function hideseek:balancing
function hideseek:minions
function hideseek:killroguewindcharge
execute if score #raycastEnabled raycastEnabled matches 1 run function hideseek:raycast
execute as @a[team=1,tag=!notswap,scores={deaths=1..}] run function events:calculateswap

# Clear players items from the Lobby
execute in minecraft:overworld run clear @a[x=-1455,y=191,z=-685,dx=5,dy=10,dz=2]
execute in minecraft:overworld run clear @a[x=-1457,y=207,z=-703,dx=8,dy=7,dz=8]