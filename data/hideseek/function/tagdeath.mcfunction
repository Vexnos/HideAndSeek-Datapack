# Hider becomes a seeker
team join 2 @s

# Give seeker items
clear @s
execute as @s run function hideseek:seekeritems
execute as @s run function hideseek:seekereffects

# Increase a global scoreboard of out players
execute as @s run scoreboard players add out out 1

# Teleport player to start
tp @s @e[tag=start,limit=1]

# Send the player to the waiting lobby if the seeker hasn't been released yet
execute if entity @a[tag=seekerWait] run tag @s add seekerWait
execute if entity @a[tag=seekerWait] run effect give @s blindness infinite 0 true

# Give dead hiders the 'Out' Tag
tag @s add out