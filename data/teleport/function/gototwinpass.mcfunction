execute in overworld run tp @e[tag=lobby,limit=1] -1087 230 -969
execute in overworld run tp @e[tag=start,limit=1] -1085 86 -969
execute in overworld run tp @a -1087 230 -969
execute in overworld run spawnpoint @a -1085 86 -969
worldborder center -1087 -969
worldborder set 230
scoreboard players set twinpass TwinPass 1
title @a actionbar ["",{"text":"Twin Pass","color":"dark_green"},{"text":" selected","color":"green"}]
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true