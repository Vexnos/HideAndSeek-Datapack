execute in overworld run tp @e[tag=lobby,limit=1] -1376 183 -136
execute in overworld run tp @e[tag=start,limit=1] -1376 111 -136
execute in overworld run tp @a -1376 183 -136
execute in overworld run spawnpoint @a -1376 183 -136
worldborder center -1376 -203
worldborder set 150
scoreboard players set redstoneAcademy redstoneAcademy 1
title @a actionbar ["",{"text":"Redstone Academy","color":"red"},{"text":" selected","color":"green"}]
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true