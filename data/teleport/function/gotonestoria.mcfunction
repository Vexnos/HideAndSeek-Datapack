execute in overworld run tp @e[tag=lobby,limit=1] 1610 161 -3249
execute in overworld run tp @e[tag=start,limit=1] 1608 78 -3249
execute in overworld run tp @a 1610 161 -3249
execute in overworld run spawnpoint @a 1610 161 -3249
worldborder center 1610 -3249
worldborder set 350
scoreboard players set nestoria Nestoria 1
title @a actionbar ["",{"text":"Nestoria","color":"gold"},{"text":" selected","color":"green"}]
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true

clear @a