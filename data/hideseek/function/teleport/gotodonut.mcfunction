# Teleporting
execute in hideseek:donut run tp @e[tag=lobby,limit=1] 372 241 369
execute in hideseek:donut run tp @e[tag=start,limit=1] 372 118 369
execute in hideseek:donut run tp @a 372 241 369
execute in hideseek:donut run spawnpoint @a 372 241 369

# Worldborder
execute in hideseek:donut run worldborder center 372 369
execute in hideseek:donut run worldborder set 250

# Map Scoreboard (Defines which map is active)
scoreboard players set donut Donut 1

# Selection Message
title @a actionbar ["",{"text":"Donut","color":"gold"},{"text":" selected","color":"green"}]

# Particles, Effects and Sounds
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true
effect clear @a speed

clear @a