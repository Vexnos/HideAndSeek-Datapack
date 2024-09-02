execute in overworld run tp @e[tag=lobby,limit=1] -4606 174 365
execute in overworld run tp @e[tag=start,limit=1] -4606 77 365
execute in overworld run tp @a -4606 174 365
execute in overworld run spawnpoint @a -4606 174 365
worldborder center -4606 365
worldborder set 540
scoreboard players set kawaiinislands KawaiinIslands 1
title @a actionbar ["",{"text":"Kawaiin Islands","color":"green"},{"text":" selected","color":"green"}]
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true