execute in overworld run tp @e[tag=lobby,limit=1] 1 113 878
execute in overworld run tp @e[tag=start,limit=1] 1 -36 878
execute in overworld run tp @a 1 113 878
execute in overworld run spawnpoint @a 1 113 878
worldborder center 1 878
worldborder set 200
scoreboard players set darkpeak DarkPeak 1
title @a title ["",{"text":"Dark Peak","color":"aqua"},{"text":" selected","color":"dark_aqua"}]
execute as @a at @s run particle glow ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.death master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true

clear @a