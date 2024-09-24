execute in overworld run tp @e[tag=lobby,limit=1] -3429 180 1244
execute in overworld run tp @e[tag=start,limit=1] -3429 40 1244
execute in overworld run tp @a -3429 180 1244
execute in overworld run spawnpoint @a -3429 180 1244
worldborder center -3429 1239
worldborder set 150
scoreboard players set tempus Tempus 1
title @a actionbar ["",{"text":"Mt Tempus","color":"green"},{"text":" selected","color":"green"}]
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true