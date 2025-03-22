# Run the corresponding function depending on the result of calculateswap
execute if score swap swap matches 2 run function events:2swap
execute if score swap swap matches 3 run function events:3swap
execute if score swap swap matches 4 run function events:4swap
execute if score swap swap matches 5 run function events:5swap
execute if score swap swap matches 6 run function events:6swap
execute if score swap swap matches 7 run function events:7swap
execute if score swap swap matches 8 run function events:8swap
execute if score swap swap matches 9 run function events:9swap
execute if score swap swap matches 10 run function events:10swap
execute if score swap swap matches 11 run function events:11swap
execute if score swap swap matches 12 run function events:12swap

# Title
title @a title {"text":"Swap!","color":"blue"}

# Play sound to everyone
execute as @a at @s run playsound minecraft:entity.enderman.teleport master @s
