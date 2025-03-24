# Titles
title @a title {"text":"Randomising Event!","color":"green"}

# Sounds
execute as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 100 1

# Set the Major Countdown to 5 seconds
scoreboard players set #countdown countdown 5

# Run the Major Countdown clock
schedule function events:countdown 1s

# Say we've run a Major Event
scoreboard players add #majorEvent majorEvent 1

# Set the amount of times a Major Event can roll for each map
execute unless score ataraxia Ataraxia matches 1 unless score hoa HOA matches 1 unless score newworld NewWorld matches 1 unless score #majorEvent majorEvent matches 3.. run schedule function events:initmevent 150s
execute if score ataraxia Ataraxia matches 1 unless score #majorEvent majorEvent matches 2.. run schedule function events:initmevent 150s
execute if score hoa HOA matches 1 unless score #majorEvent majorEvent matches 2.. run schedule function events:initmevent 150s
execute if score newworld NewWorld matches 1 unless score #majorEvent majorEvent matches 2.. run schedule function events:initmevent 150s