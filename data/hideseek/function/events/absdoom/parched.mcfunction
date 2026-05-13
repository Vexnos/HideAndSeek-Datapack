# Titles
title @a title [{type:"object",object:"atlas",atlas:"minecraft:items",sprite:"item/netherite_spear"},{"text":" ABSOLUTE DOOM ","color":"red"},{type:"object",object:"atlas",atlas:"minecraft:items",sprite:"item/netherite_spear"}]

# Sounds
execute as @a at @s run playsound minecraft:block.trial_spawner.ominous_activate master @s ~ ~ ~ 100 0

# Set the time to night
effect give @a blindness 1 0 true
time set 18000
weather thunder

# Set the timer to 20 seconds
scoreboard players set doom time 20
function hideseek:events/absdoom/summon