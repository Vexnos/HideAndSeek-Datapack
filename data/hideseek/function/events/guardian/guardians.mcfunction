# Title
title @a title [{type:"object",object:"atlas",atlas:"minecraft:items",sprite:"item/prismarine_shard"},{"text":" Guardians! ","color":"dark_aqua"},{type:"object",object:"atlas",atlas:"minecraft:items",sprite:"item/prismarine_shard"}]

# Sounds
execute as @a at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 100 0

# Set the timer to 3 seconds
scoreboard players set #guardianTimer guardianTimer 3

# Summon the Guardians
function hideseek:events/guardian/summon