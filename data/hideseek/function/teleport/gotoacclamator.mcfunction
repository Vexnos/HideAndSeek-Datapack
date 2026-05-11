# Teleporting
execute in hideseek:acclamator run tp @e[tag=lobby,limit=1] -32 221 14
execute in hideseek:acclamator run tp @e[tag=start,limit=1] -32 94 14
execute in hideseek:acclamator run tp @a -32 221 14
execute in hideseek:acclamator run spawnpoint @a -32 221 14

# Worldborder
execute in hideseek:acclamator run worldborder center -32 14
execute in hideseek:acclamator run worldborder set 725

# Map Scoreboard (Defines which map is active)
scoreboard players set acclamator Acclamator 1

# Selection Message
title @a actionbar ["",{"text":"Acclamator","color":"dark_red"},{"text":" selected","color":"green"}]

# Particles, Effects and Sounds
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true
effect clear @a speed

clear @a