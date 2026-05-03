# Teleporting
execute in hideseek:newworld run tp @e[tag=lobby,limit=1] 9 149 -22
execute in hideseek:newworld run tp @e[tag=start,limit=1] -55 64 -6
execute in hideseek:newworld run tp @a 9 149 -22
execute in hideseek:newworld run spawnpoint @a 9 149 -22

# Worldborder
execute in hideseek:newworld run worldborder center 9 -22
execute in hideseek:newworld run worldborder set 200

# Map Scoreboard (Defines which map is active)
scoreboard players set newworld NewWorld 1

# Selection Message
title @a actionbar ["",{"text":"New World","color":"red"},{"text":" selected","color":"green"}]

# Particles, Effects and Sounds
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true

# Timer max is less on New World
bossbar set minecraft:timer max 300
bossbar set minecraft:timer style progress

clear @a