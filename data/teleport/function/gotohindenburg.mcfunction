# Teleports
execute in overworld run tp @e[tag=lobby,limit=1] 229 238 2404
execute in overworld run tp @e[tag=start,limit=1] 339 230 2404
execute in overworld run tp @a 229 238 2404
execute in overworld run spawnpoint @a 229 238 2404

# Worldborder
worldborder center 474 2404
worldborder set 550

# Map Scoreboard (Defines which map is active)
scoreboard players set hindenburg Hindenburg 1

# Selection Message
title @a actionbar ["",{"text":"The Hindenburg","color":"red"},{"text":" selected","color":"dark_gray"}]

# Particles, Effects and Sounds
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true

clear @a