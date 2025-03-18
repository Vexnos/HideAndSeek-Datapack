# Give event guardians regeneration
effect give @e[type=guardian,tag=event] regeneration infinite 10 true

# Give the Seeker Effects on respawn
function hideseek:seekereffects

# Run the function every 10 ticks
schedule function hideseek:main_10t 10t