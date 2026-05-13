# Teleports
execute in the_nether run tp @e[tag=lobby,limit=1] 488 234 488
execute in the_nether run tp @e[tag=start,limit=1] 488 90 488
execute in the_nether run tp @a 488 234 488
execute in the_nether run spawnpoint @a 488 234 488

# Worldborder
execute in the_nether run worldborder center 0 0
execute in the_nether run worldborder set 59999968

# Map Scoreboard (Defines which map is active)
scoreboard players set antiEnd map 1

# Selection Message
title @a title ["",{"text":"The Anti-End","color":"dark_red"},{"text":" selected","color":"red"}]

# Particles, Effects and Sounds
execute as @a at @s run particle flame ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.death master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true
effect clear @a speed

clear @a