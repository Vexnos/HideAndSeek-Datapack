# Hider becomes a seeker
team leave @s
team join 2 @s

# Spawnpoint
execute at @e[tag=start,limit=1] run spawnpoint @s ~ ~ ~

# Give seeker items
clear @s
execute as @s run function hideseek:seeker/seekeritems
execute as @s run function hideseek:seeker/seekereffects

# Increase a global scoreboard of out players
execute as @s run scoreboard players add out players 1

# Check the last hider and give them a tag
execute if score out players >= hiding players run tag @s add winning_hider

# Teleport player to start
tp @s @e[tag=start,limit=1]

# Send the player to the waiting lobby if the seeker hasn't been released yet
execute if entity @a[tag=seekerWait] run tag @s add seekerWait
execute if entity @a[tag=seekerWait] run effect give @s blindness infinite 0 true

# Resistance
effect give @s resistance infinite 255 true

# Give dead hiders the 'Out' Tag
tag @s add out

# Extra items for remaining hiders
execute as @a[team=1,tag=!out] run function hideseek:hider/doubleitems