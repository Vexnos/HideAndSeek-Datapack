# Titles
title @a title [{type:"object",object:"atlas",atlas:"minecraft:blocks",sprite:"block/sculk_sensor_tendril_active"},{"text":" Warden Flurry! ","color":"aqua"},{type:"object",object:"atlas",atlas:"minecraft:blocks",sprite:"block/sculk_sensor_tendril_active"}]

# Sounds
execute as @a at @s run playsound minecraft:entity.evoker.prepare_summon master @s ~ ~ ~ 100 0

# Set the timer to 20 seconds
scoreboard players set #wardenTimer wardenTimer 20
function hideseek:events/wardenflurry/summon