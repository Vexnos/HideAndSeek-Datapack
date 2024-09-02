execute in overworld run tp @e[tag=lobby,limit=1] 0 278 0
execute in overworld run tp @e[tag=start,limit=1] 0 72 0
execute in overworld run tp @a 0 278 0
execute in overworld run spawnpoint @a 0 278 0
worldborder center 0 0
worldborder set 200
scoreboard players set hoa HOA 1
title @a title ["",{"text":"Heart of Ardonia","color":"blue"},{"text":" selected","color":"green"}]
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true
weather thunder