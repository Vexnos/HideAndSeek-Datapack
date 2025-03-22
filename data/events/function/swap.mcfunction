# Run the corresponding function depending on the result of calculateswap
execute if score swap swap matches 2 run function events:2swap
execute if score swap swap matches 3 run function events:3swap
execute if score swap swap matches 4 run function events:4swap

# Title
title @a title {"text":"Swap!","color":"blue"}

# Play sound to the Seekers
execute as @a[team=2] at @s run playsound minecraft:entity.enderman.teleport master @s