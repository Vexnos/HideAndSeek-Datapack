# Teleports
execute in hideseek:cathedral run tp @e[tag=lobby,limit=1] -114 56 0
execute in hideseek:cathedral run tp @e[tag=start,limit=1] -114 -24 0
execute in hideseek:cathedral run tp @a -114 56 0
execute in hideseek:cathedral run spawnpoint @a -114 56 0

# Worldborder
worldborder center -114 0
worldborder set 1150

# Map Scoreboard (Defines which map is active)
scoreboard players set cathedral Cathedral 1

# Selection Message
title @a title ["",{"text":"Cathedral","color":"dark_purple"},{"text":" selected","color":"light_purple"}]

# Particles, Effects and Sounds
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.death master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true

clear @a