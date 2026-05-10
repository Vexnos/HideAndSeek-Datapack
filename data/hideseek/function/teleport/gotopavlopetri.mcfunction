# Teleports
execute in overworld run tp @e[tag=lobby,limit=1] 1656 -4 285
execute in overworld run tp @e[tag=start,limit=1] 1656 -17 286
execute in overworld run tp @a 1656 -4 285
execute in overworld run spawnpoint @a 1656 -4 285

# Worldborder
execute in overworld run worldborder center 1656 361
execute in overworld run worldborder set 205

# Map Scoreboard (Defines which map is active)
scoreboard players set pavlopetri Pavlopetri 1

# Selection Message
title @a title ["",{"text":"Atlantis","color":"aqua"},{"text":" selected","color":"dark_aqua"}]

# Particles, Effects and Sounds
execute as @a at @s run particle glow ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 100 1
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true

clear @a