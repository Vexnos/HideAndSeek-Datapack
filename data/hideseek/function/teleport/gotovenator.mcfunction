# Teleporting
execute in hideseek:venator run tp @e[tag=lobby,limit=1] -522 148 0
execute in hideseek:venator run tp @e[tag=start,limit=1] -522 -4 0
execute in hideseek:venator run tp @a -522 148 0
execute in hideseek:venator run spawnpoint @a -522 148 0

# Worldborder
execute in hideseek:venator run worldborder center -522 0
execute in hideseek:venator run worldborder set 1225

# Map Scoreboard (Defines which map is active)
scoreboard players set venator Venator 1

# Selection Message
title @a title ["",{"text":"Venator","color":"dark_red"},{"text":" selected","color":"red"}]

# Particles, Effects and Sounds
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.death master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true

clear @a