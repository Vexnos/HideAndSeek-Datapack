# Teleports
execute in overworld run tp @e[tag=lobby,limit=1] -5123 105 93
execute in overworld run tp @e[tag=start,limit=1] -5123 2 93
execute in overworld run tp @a -5123 105 93
execute in overworld run spawnpoint @a -5123 105 93

# Worldborder
worldborder center -5123 93
worldborder set 151

# Map Scoreboard (Defines which map is active)
scoreboard players set paleora Paleora 1

# Selection Message
title @a title ["",{"text":"Pale Gardens","color":"#ec4706"},{"text":" selected","color":"green"}]

# Particles, Effects and Sounds
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.death master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true

# Set Time
time set 18000

clear @a