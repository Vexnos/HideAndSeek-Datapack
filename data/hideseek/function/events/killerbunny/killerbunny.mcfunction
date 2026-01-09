# Title
title @a title {"text":"Killer Bunnies!","color":"red"}

# Sounds
execute as @a at @s run playsound minecraft:entity.evoker.prepare_summon master @s

# Give Existing Bunnies Jump Boost
effect give @e[type=rabbit,nbt={RabbitType:99}] jump_boost 10 15 true

# Set the timer to 10 seconds
scoreboard players set #bunnyTimer bunnyTimer 20

# Summon Phantoms
function hideseek:events/killerbunny/summon
