# Teleporting
execute in hideseek:imperator run tp @e[tag=lobby,limit=1] -1239 746 8
execute in hideseek:imperator run tp @e[tag=start,limit=1] -1393 741 8
execute in hideseek:imperator run tp @a -1239 746 8
execute in hideseek:imperator run spawnpoint @a -1239 746 8

# Worldborder
execute in hideseek:imperator run worldborder center -1393 8
execute in hideseek:imperator run worldborder set 350

# Map Scoreboard (Defines which map is active)
scoreboard players set imperator Imperator 1

# Selection Message
title @a title ["",{"text":"Star Destroyer","color":"red"},{"text":" selected","color":"green"}]

# Particles, Effects and Sounds
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.death master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true
effect clear @a speed

clear @a