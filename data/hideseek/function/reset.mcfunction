effect clear @a
team leave @a
tp @a @e[tag=lobby, limit=1]
scoreboard players reset @a spectator
gamemode adventure @a
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s
title @a title {"text":"The game is over!","color":"red"}
clear @a
team join 3 @a
schedule clear hideseek:timer
schedule clear hideseek:reset
schedule clear hideseek:border1
schedule clear hideseek:border2
schedule clear hideseek:seek
schedule clear hideseek:finalminute
scoreboard players set Timer time 0
scoreboard players set Minutes minutes 0
scoreboard players reset @a deaths
scoreboard players reset out out
scoreboard players reset hiders hiding
tag @a remove out
execute if score crownpeak CrownPeak matches 1.. run worldborder set 200 2
execute if score felora Felora matches 1.. run worldborder set 150 2
execute if score tartarus Tartarus matches 1.. run worldborder set 175 2
execute if score hyperia Hyperia matches 1.. run worldborder set 370 2
execute if score hailstone Hailstone matches 1.. run worldborder set 300 2
execute if score meridian Meridian matches 1.. run worldborder set 300 2
execute if score twinpass TwinPass matches 1.. run worldborder set 230 2
execute if score kawaiinislands KawaiinIslands matches 1.. run worldborder set 540 2
execute if score diamondheights DiamondHeights matches 1.. run worldborder set 250 2
execute if score nazgard Nazgard matches 1.. run worldborder set 250 2
execute if score end End matches 1.. run worldborder set 360 2
execute if score oakendale Oakendale matches 1.. run worldborder set 400
execute if score etherea Etherea matches 1.. run worldborder set 200
execute if score incatasia Incatasia matches 1.. run worldborder set 275
execute if score amaria Amaria matches 1.. run worldborder set 440
kill @e[type=ravager]
kill @e[type=pillager]
kill @e[type=wither]
kill @e[type=warden]
kill @e[type=ghast]
kill @e[type=wither_skull]
kill @e[type=chicken]
tag @a remove seekerWait
time set 7000