# Set dead Hiders to Spectator Mode
execute as @a[team=1] if score @s deaths matches 1.. if score #game gameRunning matches 1 run gamemode spectator @s

# Reset deaths if the game isn't running
execute if score #game gameRunning matches 0 run scoreboard players reset @a deaths
