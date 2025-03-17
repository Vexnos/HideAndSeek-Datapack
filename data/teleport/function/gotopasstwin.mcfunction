execute in overworld run tp @e[tag=lobby,limit=1] 5125 130 98
execute in overworld run tp @e[tag=start,limit=1] 5125 28 98
execute in overworld run tp @a 5125 130 98
execute in overworld run spawnpoint @a 5125 130 98
worldborder center 5121 98
worldborder set 230
scoreboard players set passtwin Passtwin 1
title @a actionbar ["",{"text":"Pass Twin","color":"dark_green"},{"text":" selected","color":"green"}]
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true

clear @a