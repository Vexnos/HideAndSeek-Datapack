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