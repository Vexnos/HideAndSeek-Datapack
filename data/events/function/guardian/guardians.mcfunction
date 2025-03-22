# Title
title @a title {"text":"Guardians!","color":"dark_aqua"}

# Sounds
execute as @a at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 100 0

# Set the timer to 3 seconds
scoreboard players set #guardianTimer guardianTimer 3

# Summon the Guardians
function events:guardian/summon