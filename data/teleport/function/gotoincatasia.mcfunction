execute in overworld run tp @e[tag=lobby,limit=1] -916 227 1325
execute in overworld run tp @e[tag=start,limit=1] -916 124 1325
execute in overworld run tp @a -916 227 1325
execute in overworld run spawnpoint @a -916 227 1325
worldborder center -916 1325
worldborder set 275
scoreboard players set incatasia Incatasia 1
title @a actionbar ["",{"text":"Incatasia","color":"blue"},{"text":" selected","color":"green"}]
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true