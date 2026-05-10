# Teleports
execute in overworld run tp @e[tag=lobby,limit=1] 1843 202 -289
execute in overworld run tp @e[tag=start,limit=1] 1844 109 -289
execute in overworld run tp @a 1843 202 -289
execute in overworld run spawnpoint @a 1843 202 -289

# Worldborder
execute in overworld run worldborder center 1755 -344
execute in overworld run worldborder set 370

# Map Scoreboard (Defines which map is active)
scoreboard players set hyperia Hyperia 1

# Selection Map
title @a actionbar ["",{"text":"Hyperia","color":"dark_aqua"},{"text":" selected","color":"green"}]

# Particles, Effects and Sound
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true

clear @a