# Teleports
execute in overworld run tp @e[tag=lobby,limit=1] 1639 238 1307
execute in overworld run tp @e[tag=start,limit=1] 1639 164 1307
execute in overworld run tp @a 1639 238 1307
execute in overworld run spawnpoint @a 1639 238 1307

# Worldborder
execute in overworld run worldborder center 1588 1228
execute in overworld run worldborder set 440

# Map Scoreboard (Defines which map is active)
scoreboard players set amaria map 1

# Selection Message
title @a actionbar ["",{"text":"Amaria","color":"dark_aqua"},{"text":" selected","color":"green"}]

# Particles, Effects and Sounds
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true
effect clear @a speed

clear @a