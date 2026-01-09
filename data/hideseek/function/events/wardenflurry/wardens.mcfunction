# Titles
title @a title {"text":"Warden Flurry!","color":"aqua"}

# Sounds
execute as @a at @s run playsound minecraft:entity.evoker.prepare_summon master @s ~ ~ ~ 100 0

# Set the timer to 20 seconds
scoreboard players set #wardenTimer wardenTimer 20
function hideseek:events/wardenflurry/summon