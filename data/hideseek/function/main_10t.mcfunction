# Give event guardians regeneration
effect give @e[type=guardian,tag=event] regeneration infinite 10 true

# Give teleport ability when player uses all shards
execute as @a[scores={shardsUsed=3..},tag=!itemsGiven] run function hideseek:shadowclones/shards

# Give the Seeker Effects on respawn
function hideseek:seekereffects

# Run the function every 10 ticks
schedule function hideseek:main_10t 10t