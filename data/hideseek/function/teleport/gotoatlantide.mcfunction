# Teleporting
execute in hideseek:atlantide run tp @e[tag=lobby,limit=1] 984 204 -1698
execute in hideseek:atlantide run tp @e[tag=start,limit=1] 984 94 -1698
execute in hideseek:atlantide run tp @a 984 204 -1698
execute in hideseek:atlantide run spawnpoint @a 984 204 -1698

# Worldborder
execute in hideseek:atlantide run worldborder center 1066 -1698
execute in hideseek:atlantide run worldborder set 850

# Map Scoreboard (Defines which map is active)
scoreboard players set atlantide map 1

# Selection Message
title @a title ["",{"text":"Atlantide","color":"dark_aqua"},{"text":" selected","color":"green"}]

# Particles, Effects and Sounds
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.death master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true
effect clear @a speed

# Bossbar
bossbar set timer style notched_12
bossbar set timer max 720

clear @a