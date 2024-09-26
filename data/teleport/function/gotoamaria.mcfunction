execute in overworld run tp @e[tag=lobby,limit=1] 1639 238 1307
execute in overworld run tp @e[tag=start,limit=1] 1639 164 1307
execute in overworld run tp @a 1639 238 1307
execute in overworld run spawnpoint @a 1639 238 1307
worldborder center 1639 1307
worldborder set 440
scoreboard players set amaria Amaria 1
title @a actionbar ["",{"text":"Amaria","color":"dark_aqua"},{"text":" selected","color":"green"}]
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true