# Title
title @a title [{type:"object",object:"atlas",atlas:"minecraft:items",sprite:"item/elytra"},{"text":" Phantom Swarm! ","color":"green"},{type:"object",object:"atlas",atlas:"minecraft:items",sprite:"item/elytra"}]

# Sounds
execute as @a at @s run playsound minecraft:entity.evoker.prepare_summon master @s

# Set the timer to 4 seconds
scoreboard players set #phantomTimer phantomTimer 4

# Summon Phantoms
function hideseek:events/phantoms/summon
