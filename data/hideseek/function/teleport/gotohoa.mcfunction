# Teleports
execute in overworld run tp @e[tag=lobby,limit=1] 0 278 0
execute in overworld run tp @e[tag=start,limit=1] 0 72 0
execute in overworld run tp @a 0 278 0
execute in overworld run spawnpoint @a 0 278 0

# Worldborder
worldborder center 0 0
worldborder set 200

# Map Scoreboard (Defines which map is active)
scoreboard players set hoa HOA 1

# Selection Message
title @a actionbar ["",{"text":"Heart of Ardonia","color":"blue"},{"text":" selected","color":"green"}]

# Particles, Effects and Sounds
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true

# Set Weather to Thunder
weather thunder

# Timer max is less on Heart of Ardonia
bossbar set minecraft:timer max 450
bossbar set minecraft:timer style progress

clear @a