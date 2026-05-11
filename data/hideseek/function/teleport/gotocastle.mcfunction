# Teleporting
execute in hideseek:castle run tp @e[tag=lobby,limit=1] 182 270 -80
execute in hideseek:castle run tp @e[tag=start,limit=1] 172 128 -80
execute in hideseek:castle run tp @a 182 270 -80
execute in hideseek:castle run spawnpoint @a 182 270 -80

# Worldborder
execute in hideseek:castle run worldborder center 141 -80
execute in hideseek:castle run worldborder set 100

# Map Scoreboard (Defines which map is active)
scoreboard players set castle Castle 1

# Selection Message
title @a actionbar ["",{"text":"Mysterious Castle","color":"dark_purple"},{"text":" selected","color":"green"}]

# Particles, Effects and Sounds
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true
effect clear @a speed

clear @a