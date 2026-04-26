# Run the corresponding function depending on the result of calculateswap
execute if score swap swap matches 2 run function hideseek:events/2swap
execute if score swap swap matches 3 run function hideseek:events/3swap
execute if score swap swap matches 4 run function hideseek:events/4swap
execute if score swap swap matches 5 run function hideseek:events/5swap
execute if score swap swap matches 6 run function hideseek:events/6swap
execute if score swap swap matches 7 run function hideseek:events/7swap
execute if score swap swap matches 8 run function hideseek:events/8swap
execute if score swap swap matches 9 run function hideseek:events/9swap
execute if score swap swap matches 10 run function hideseek:events/10swap
execute if score swap swap matches 11 run function hideseek:events/11swap
execute if score swap swap matches 12 run function hideseek:events/12swap

# Title
title @a title [{type:"object",object:"atlas",atlas:"minecraft:items",sprite:"item/ender_eye"},{"text":" Swap! ","color":"blue"},{type:"object",object:"atlas",atlas:"minecraft:items",sprite:"item/ender_eye"}]

# Play sound to everyone
execute as @a at @s run playsound minecraft:entity.enderman.teleport master @s
