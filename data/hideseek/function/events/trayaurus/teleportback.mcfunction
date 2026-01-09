# TP the player back to the armor stand
tp @a[tag=trayaurus] @e[tag=tray,limit=1]

# Clear the player of resistance
effect clear @a[tag=trayaurus] resistance

# Sounds
execute as @a[tag=trayaurus] at @s run playsound minecraft:entity.enderman.teleport master @s

# Kill the armor stand
kill @e[tag=tray]

# Remove the tag from the player
tag @a[tag=trayaurus] remove trayaurus