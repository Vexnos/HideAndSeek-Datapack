# Titles
execute unless score nazgard Nazgard matches 1 unless score antiend Antiend matches 1 run title @a title {"text":"Breezes!","color":"aqua"}
execute if score nazgard Nazgard matches 1 run title @a title {"text":"Blazes!","color":"gold"}
execute if score antiend Antiend matches 1 run title @a title {"text":"Blazes!","color":"gold"}

# Sounds
execute unless score nazgard Nazgard matches 1 unless score antiend Antiend matches 1 as @a at @s run playsound minecraft:entity.breeze.inhale master @s ~ ~ ~ 100 0
execute if score nazgard Nazgard matches 1 as @a at @s run playsound minecraft:entity.blaze.burn master @s
execute if score antiend Antiend matches 1 as @a at @s run playsound minecraft:entity.blaze.burn master @s

# Set the Breeze Timer to 3 Seconds
scoreboard players set #breezeTimer breezeTimer 3

# Summon the Breezes/Blazes
function hideseek:events/breeze/summon