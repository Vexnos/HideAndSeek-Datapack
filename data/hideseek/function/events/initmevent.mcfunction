# Titles
title @a title {"text":"Randomising Event!","color":"green"}

# Sounds
execute as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 100 1

# Set the Major Countdown to 5 seconds
scoreboard players set #countdown countdown 5

# Run the Major Countdown clock
schedule function hideseek:events/countdown 1s

# Say we've run a Major Event
scoreboard players add #majorEvent majorEvent 1

# Set the amount of times a Major Event can roll for each map
execute unless score HOA map matches 1 unless score newWorld map matches 1 unless score cathedral map matches 1 unless score atlantide map matches 1 unless score #majorEvent majorEvent matches 3.. run schedule function hideseek:events/initmevent 150s
execute if score cathedral map matches 1 unless score #majorEvent majorEvent matches 7.. run schedule function hideseek:events/initmevent 150s
execute if score atlantide map matches 1 unless score #majorEvent majorEvent matches 7.. run schedule function hideseek:events/initmevent 150s
execute if score HOA map matches 1 unless score #majorEvent majorEvent matches 2.. run schedule function hideseek:events/initmevent 150s
execute if score newWorld map matches 1 unless score #majorEvent majorEvent matches 2.. run schedule function hideseek:events/initmevent 150s