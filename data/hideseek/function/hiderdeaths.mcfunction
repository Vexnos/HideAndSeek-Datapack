# Set dead Hiders to Spectator Mode
execute as @s if score gameRunning settings matches 1 run gamemode spectator @s

# Increase a global scoreboard of out players
execute as @s run scoreboard players add out out 1

# Reset Deaths scoreboard
scoreboard players reset @s deaths

# Give dead hiders the 'Out' Tag
tag @s add out