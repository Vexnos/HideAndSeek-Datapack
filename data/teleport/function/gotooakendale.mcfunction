execute in overworld run tp @e[tag=lobby,limit=1] -1291 190 -1301
execute in overworld run tp @e[tag=start,limit=1] -1291 91 -1301
execute in overworld run tp @a -1291 190 -1301
execute in overworld run spawnpoint @a -1291 91 -1301
worldborder center -1289 -1367
worldborder set 400
scoreboard players set oakendale Oakendale 1
title @a actionbar ["",{"text":"Oakendale","color":"dark_green"},{"text":" selected","color":"green"}]
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true