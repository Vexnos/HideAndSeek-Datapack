execute in overworld run tp @e[tag=lobby,limit=1] 158 274 -691
execute in overworld run tp @e[tag=start,limit=1] 158 139 -691
execute in overworld run tp @a 158 274 -691
execute in overworld run spawnpoint @a 158 139 -691
worldborder center 158 -691
worldborder set 300
scoreboard players set ataraxia Ataraxia 1
title @a actionbar ["",{"text":"Ataraxia","color":"blue"},{"text":" selected","color":"green"}]
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true