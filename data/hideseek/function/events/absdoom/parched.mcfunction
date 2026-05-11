# Titles
title @a title [{type:"object",object:"atlas",atlas:"minecraft:items",sprite:"item/netherite_spear"},{"text":" ABSOLUTE DOOM ","color":"red"},{type:"object",object:"atlas",atlas:"minecraft:items",sprite:"item/netherite_spear"}]

# Sounds
execute as @a at @s run playsound minecraft:entity.evoker.prepare_summon master @s ~ ~ ~ 100 0

# Set the time to night
time set 18000

# Set the timer to 20 seconds
scoreboard players set #doomTimer doomTimer 20
function hideseek:events/absdoom/summon