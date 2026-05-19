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
execute unless score darkPeak map matches 1 unless score pavlopetri map matches 1 unless score passTwin map matches 1 unless score antiEnd map matches 1 unless score hailstorm map matches 1 unless score antiNazgard map matches 1 unless score paleora map matches 1 run tag @s add resistanceRequired
schedule function hideseek:seeker/resistance 10t

# Give dead hiders the 'Out' Tag
tag @s add out

# Extra items for remaining hiders
execute as @a[team=1,tag=!out] run function hideseek:hider/doubleitems