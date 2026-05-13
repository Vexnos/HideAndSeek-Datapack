# Teleports
execute in the_end run tp @e[tag=lobby,limit=1] -1047 252 -607
execute in the_end run tp @e[tag=start,limit=1] -1081 80 -633
execute in the_end run tp @a -1047 252 -607
execute in the_end run spawnpoint @a -1047 252 -607

# Worldborder
execute in the_end run worldborder center -1047 -607
execute in the_end run worldborder set 360

# Map Scoreboard (Defines which map is active)
scoreboard players set end map 1

# Selection Message
title @a title ["",{"text":"The End","color":"dark_purple"},{"text":" selected","color":"light_purple"}]

# Particles, Effects and Sounds
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.death master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true
effect clear @a speed

clear @a