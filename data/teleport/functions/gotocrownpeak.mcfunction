tp @e[tag=lobby,limit=1] -702 195 579
tp @e[tag=start,limit=1] -703 99 579
tp @a -702 195 579
spawnpoint @a -702 195 579
scoreboard players set crownpeak CrownPeak 1
title @a title ["",{"text":"Crown Peak","color":"dark_purple"},{"text":" selected","color":"green"}]
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true