execute in overworld run tp @e[tag=lobby,limit=1] 1331 177 -104
execute in overworld run tp @e[tag=start,limit=1] 1324 94 -112
execute in overworld run tp @a 1331 177 -104
execute in overworld run spawnpoint @a 1331 177 -104
worldborder center 1331 -104
worldborder set 250
scoreboard players set diamondheights DiamondHeights 1
title @a title ["",{"text":"Diamond Heights","color":"dark_aqua"},{"text":" selected","color":"green"}]
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true