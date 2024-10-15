execute in overworld run tp @e[tag=lobby,limit=1] -768 168 -4133
execute in overworld run tp @e[tag=start,limit=1] -734 132 -4042
execute in overworld run tp @a -768 168 -4133
execute in overworld run spawnpoint @a -768 168 -4133
worldborder center -734 -4042
worldborder set 300
scoreboard players set hailstone Hailstone 1
title @a actionbar ["",{"text":"Hailstone","color":"aqua"},{"text":" selected","color":"green"}]
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true