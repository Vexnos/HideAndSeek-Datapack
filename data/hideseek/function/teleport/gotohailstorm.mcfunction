# Teleports
execute in hideseek:hailstorm run tp @e[tag=lobby,limit=1] -707 277 -3942
execute in hideseek:hailstorm run tp @e[tag=start,limit=1] -741 241 -4033
execute in hideseek:hailstorm run tp @a -707 277 -3942
execute in hideseek:hailstorm run spawnpoint @a -707 277 -3942

# Worldborder
execute in hideseek:hailstorm run worldborder center -741 -4033
execute in hideseek:hailstorm run worldborder set 300

# Map Scoreboard (Defines which map is active)
scoreboard players set hailstorm Hailstorm 1

# Selection Message
title @a title ["",{"text":"Hailstorm","color":"aqua"},{"text":" selected","color":"dark_aqua"}]

# Particles, Effects and Sounds
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.death master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true
effect clear @a speed

# Weather
weather thunder

# Scale
execute as @a run attribute @s minecraft:scale base set 0.25

clear @a