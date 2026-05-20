#
# Description: TP players to Markar
# Called by: Player
# Entity @s: None
#
execute in overworld run tp @e[tag=lobby,limit=1] -677 232 2649
execute in overworld run tp @e[tag=start,limit=1] -677 78 2649
execute in overworld run tp @a -677 232 2649
execute in overworld run spawnpoint @a -677 232 2649
execute in overworld run worldborder center -677 2649
execute in overworld run worldborder set 200
scoreboard players set markar map 1
title @a actionbar ["",{"text":"Markar","color":"red"},{"text":" selected","color":"green"}]
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true
effect clear @a speed

clear @a