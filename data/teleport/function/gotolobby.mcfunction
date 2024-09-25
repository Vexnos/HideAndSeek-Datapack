scoreboard players set crownpeak CrownPeak 0
scoreboard players set felora Felora 0
scoreboard players set tartarus Tartarus 0
scoreboard players set hyperia Hyperia 0
scoreboard players set hailstone Hailstone 0
scoreboard players set nazgard Nazgard 0
scoreboard players set meridian Meridian 0
scoreboard players set kaelos Kaelos 0
scoreboard players set twinpass TwinPass 0
scoreboard players set kawaiinislands KawaiinIslands 0
scoreboard players set diamondheights DiamondHeights 0
scoreboard players set ataraxia Ataraxia 0
scoreboard players set hoa HOA 0
scoreboard players set tempus Tempus 0
scoreboard players set end End 0
title @a actionbar {"text":"Back to Lobby","color":"green"}
execute in overworld run tp @a -1453 207 -699
execute in overworld run spawnpoint @a -1453 207 -699
execute as @a at @s run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 500 force
execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
effect give @a blindness 1 0 true
worldborder center 0 0
worldborder set 6000000
weather clear