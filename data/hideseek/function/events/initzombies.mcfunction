# Set the Zombie count to 10
scoreboard players set zombies time 10

# Titles
execute unless score pavlopetri map matches 1 run title @a title {"text":"Zombies!","color":"green"}
execute if score pavlopetri map matches 1 run title @a title {"text":"Drowned!","color":"green"}

# Sounds
execute as @a at @s run playsound minecraft:entity.zombie.infect master @s

# Summon the Zombies
function hideseek:events/zombies