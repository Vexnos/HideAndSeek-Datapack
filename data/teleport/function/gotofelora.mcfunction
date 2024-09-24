execute in overworld run tp @e[tag=lobby,limit=1] -3806 206 -64
execute in overworld run tp @e[tag=start,limit=1] -3805 102 -64
execute in overworld run tp @a -3806 206 -64
execute in overworld run spawnpoint @a -3806 206 -64
worldborder center -3806 -64
worldborder set 150
scoreboard players set felora Felora 1
title @a actionbar ["",{"text":"Felora","color":"green"},{"text":" selected","color":"green"}]
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true