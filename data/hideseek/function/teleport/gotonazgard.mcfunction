# Teleports
execute in the_nether run tp @e[tag=lobby,limit=1] -248 93 -1089
execute in the_nether run tp @e[tag=start,limit=1] -204 75 -1109
execute in the_nether run tp @a -248 93 -1089
execute in the_nether run spawnpoint @a -248 93 -1089

# Worldborder
worldborder center -1632 -8520
worldborder set 250

# Map Scoreboard (Defines which map is active)
scoreboard players set nazgard Nazgard 1

# Selection Message
title @a title ["",{"text":"Nazgard","color":"dark_red"},{"text":" selected","color":"red"}]

# Particles, Effects and Sounds
execute as @a at @s run particle flame ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.death master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true

clear @a