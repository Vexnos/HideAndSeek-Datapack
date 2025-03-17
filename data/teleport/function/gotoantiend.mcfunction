execute in the_nether run tp @e[tag=lobby,limit=1] 488 234 488
execute in the_nether run tp @e[tag=start,limit=1] 488 90 488
execute in the_nether run tp @a 488 234 488
execute in the_nether run spawnpoint @a 488 234 488
worldborder center 0 0
worldborder set 59999968
scoreboard players set antiend Antiend 1
title @a title ["",{"text":"The Anti-End","color":"dark_red"},{"text":" selected","color":"red"}]
execute as @a at @s run particle flame ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.death master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true

clear @a