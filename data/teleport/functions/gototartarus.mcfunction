execute in overworld run tp @e[tag=lobby,limit=1] -55 51 2434
execute in overworld run tp @e[tag=start,limit=1] -55 38 2435
execute in overworld run tp @a -55 51 2434
execute in overworld run spawnpoint @a -55 51 2434
worldborder center -55 2510
worldborder set 175
scoreboard players set tartarus Tartarus 1
title @a actionbar ["",{"text":"Tartarus","color":"red"},{"text":" selected","color":"green"}]
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true