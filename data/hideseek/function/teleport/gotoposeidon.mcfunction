#
# Description: TP players to Poseidon
# Called by: Player
# Entity @s: None
#
# Teleports
execute in overworld run tp @e[tag=lobby,limit=1] -2079 246 2292
execute in overworld run tp @e[tag=start,limit=1] -2079 157 2292
execute in overworld run tp @a -2079 246 2292
execute in overworld run spawnpoint @a -2079 246 2292

# Worldborder
execute in overworld run worldborder center -2079 2292
execute in overworld run worldborder set 725

# Map Scoreboard (Defines which map is active)
scoreboard players set poseidon map 1

# Selection Message
title @a actionbar ["",{"text":"Poseidon","color":"blue"},{"text":" selected","color":"green"}]

# Particles, Effects and Sounds
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true
effect clear @a speed

clear @a