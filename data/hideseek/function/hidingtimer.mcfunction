# Decrease timer
scoreboard players remove #hidingTime hidingTime 1

# Send scoreboard value to bossbar
execute store result bossbar hidingtimer value run scoreboard players get #hidingTime hidingTime

# Run the function every second
schedule function hideseek:hidingtimer 1s