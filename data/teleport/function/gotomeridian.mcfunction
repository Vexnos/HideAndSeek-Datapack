# Teleports
execute in overworld run tp @e[tag=lobby,limit=1] 61 137 4606
execute in overworld run tp @e[tag=start,limit=1] 61 85 4607
execute in overworld run tp @a 61 137 4606
execute in overworld run spawnpoint @a 61 137 4606

# Worldborder
worldborder center 61 4606
worldborder set 300

# Map Scoreboard (Defines which map is active)
scoreboard players set meridian Meridian 1

# Selection Message
title @a actionbar ["",{"text":"Meridian","color":"gold"},{"text":" selected","color":"green"}]

# Particles, Effects and Sounds
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true

clear @a