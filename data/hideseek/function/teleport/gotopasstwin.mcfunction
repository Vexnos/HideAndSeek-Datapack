# Teleports
execute in hideseek:lobby run tp @e[tag=lobby,limit=1] 5125 130 98
execute in hideseek:lobby run tp @e[tag=start,limit=1] 5125 28 98
execute in hideseek:lobby run tp @a 5125 130 98
execute in hideseek:lobby run spawnpoint @a 5125 130 98

# Worldborder
execute in hideseek:lobby run worldborder center 5121 98
execute in hideseek:lobby run worldborder set 230

# Map Scoreboard (Defines which map is active)
scoreboard players set passTwin map 1

# Selection Message
title @a title ["",{"text":"ssɐd uıʍʇ","color":"dark_green"},{"text":" selected","color":"green"}]

# Particles, Effects and Sounds
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.death master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true
effect clear @a speed

clear @a