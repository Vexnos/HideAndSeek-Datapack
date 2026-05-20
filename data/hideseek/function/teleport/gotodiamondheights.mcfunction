#
# Description: TP players to Diamond Heights
# Called by: Player
# Entity @s: None
#
# Teleports
execute in overworld run tp @e[tag=lobby,limit=1] 1331 177 -104
execute in overworld run tp @e[tag=start,limit=1] 1324 94 -112
execute in overworld run tp @a 1331 177 -104
execute in overworld run spawnpoint @a 1331 177 -104

# Worldborder
execute in overworld run worldborder center 1331 -104
execute in overworld run worldborder set 250

# Map Scoreboard (Defines which map is active)
scoreboard players set diamondHeights map 1

# Selection Message
title @a actionbar ["",{"text":"Diamond Heights","color":"dark_aqua"},{"text":" selected","color":"green"}]

# Particles, Effects and Sounds
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true
effect clear @a speed

clear @a