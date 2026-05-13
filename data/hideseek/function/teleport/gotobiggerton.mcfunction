# Teleports
execute in overworld run tp @e[tag=lobby,limit=1] -396 221 -1342
execute in overworld run tp @e[tag=start,limit=1] -396 79 -1328
execute in overworld run tp @a -396 221 -1342
execute in overworld run spawnpoint @a -396 221 -1342

# Worldborder
execute in overworld run worldborder center -396 -1342
execute in overworld run worldborder set 200

# Map Scoreboard (Defines which map is active)
scoreboard players set biggerton map 1

# Selection Message
title @a actionbar ["",{"text":"Biggerton","color":"dark_green"},{"text":" selected","color":"green"}]

# Particles, Effects and Sounds
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true
effect clear @a speed

clear @a