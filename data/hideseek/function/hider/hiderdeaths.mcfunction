# Set dead Hiders to Spectator Mode
execute as @s if score gameRunning settings matches 1 run gamemode spectator @s

# Increase a global scoreboard of out players
execute as @s run scoreboard players add out players 1

# Give dead hiders the 'Out' Tag
tag @s add out