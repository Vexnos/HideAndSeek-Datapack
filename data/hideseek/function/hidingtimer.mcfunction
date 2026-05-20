#
# Description: Hiding timer display
# Called by: THIS, hideseek:start
# Entity @s:
#
# Decrease timer
scoreboard players remove hiding time 1

# Send scoreboard value to bossbar
execute store result bossbar hidingtimer value run scoreboard players get hiding time

# Run the function every second
schedule function hideseek:hidingtimer 1s