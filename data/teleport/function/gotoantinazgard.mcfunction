# Teleports
execute in the_end run tp @e[tag=lobby,limit=1] 85 118 604
execute in the_end run tp @e[tag=start,limit=1] 129 100 583
execute in the_end run tp @a 85 118 604
execute in the_end run spawnpoint @a 85 118 604

# Worldborder
worldborder center 129 628
worldborder set 249

# Map Scoreboard (Defines which map is active)
scoreboard players set antinazgard Antinazgard 1

# Selection Message
title @a title ["",{"text":"Anti-Nazgard","color":"dark_purple"},{"text":" selected","color":"light_purple"}]

# Particles, Effects and Sounds
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.death master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true

clear @a