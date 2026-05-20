#
# Description: TP players to Paleora
# Called by: Player
# Entity @s: None
#
# Teleports
execute in hideseek:lobby run tp @e[tag=lobby,limit=1] -5053 265 170
execute in hideseek:lobby run tp @e[tag=start,limit=1] -5053 162 170
execute in hideseek:lobby run tp @a -5053 265 170
execute in hideseek:lobby run spawnpoint @a -5053 265 170

# Worldborder
execute in hideseek:lobby run worldborder center -5053 170
execute in hideseek:lobby run worldborder set 151

# Map Scoreboard (Defines which map is active)
scoreboard players set paleora map 1

# Selection Message
title @a title ["",{"text":"Pale Gardens","color":"#ec4706"},{"text":" selected","color":"green"}]

# Particles, Effects and Sounds
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.death master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true
effect clear @a speed

# Set Time
time set 18000

clear @a