execute in the_end run tp @e[tag=lobby,limit=1] -1047 252 -607
execute in the_end run tp @e[tag=start,limit=1] -1081 80 -633
execute in the_end run tp @a -1047 252 -607
execute in the_end run spawnpoint @a -1081 80 -633
worldborder center -1047 -607
worldborder set 360
scoreboard players set end End 1
title @a title ["",{"text":"The End","color":"dark_purple"},{"text":" selected","color":"light_purple"}]
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.death master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true