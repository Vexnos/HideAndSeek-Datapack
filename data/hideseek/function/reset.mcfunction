# Game Over title
execute if score hiders hiding > out out run title @a title {"text":"Hiders Win!","color":"red"}
execute if score hiders hiding > out out as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s
execute if score hiders hiding <= out out run title @a title {"text":"Seekers Win!","color":"blue"}
execute if score hiders hiding <= out out as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s

execute at @e[tag=lobby,limit=1] run spawnpoint @a ~ ~ ~
effect clear @a
team leave @a
kill @e[type=snowball]
kill @e[type=egg]
kill @e[type=spectral_arrow]
kill @e[type=trident]
scoreboard players reset @a spectator
gamemode adventure @a
clear @a
team join 3 @a
schedule clear hideseek:timer
schedule clear hideseek:hidingtimer
schedule clear hideseek:reset
schedule clear hideseek:border1
schedule clear hideseek:border2
schedule clear hideseek:seek
schedule clear hideseek:finalminute
schedule clear events:initmevent
schedule clear events:initevent
schedule clear events:countdown
schedule clear events:mcountdown
schedule clear events:roller
schedule clear events:majorevents
schedule clear events:minorevents
schedule clear events:zombies
schedule clear events:creeper
schedule clear events:trayaurus/trayaurus
schedule clear events:trayaurus/teleportthere
schedule clear events:trayaurus/teleportback
schedule clear events:disableteleports/enable
scoreboard players set Timer time 0
scoreboard players set #hidingTime hidingTime 64
scoreboard players set Minutes minutes 0
scoreboard players reset @a deaths
scoreboard players set out out 0
scoreboard players reset hiders hiding
scoreboard players set #majorEvent majorEvent 0
scoreboard players set #minorEvent minorEvent 0
scoreboard players set #zombieTimer zombieTimer 0
scoreboard players set #breezeTimer breezeTimer 0
scoreboard players set #guardianTimer guardianTimer 0
scoreboard players set #mountsEnabled mountsEnabled 1
tag @a remove out
tag @a remove notswap

# Reset Worldborder
execute if score crownpeak CrownPeak matches 1.. run worldborder set 200 2
execute if score felora Felora matches 1.. run worldborder set 150 2
execute if score tartarus Tartarus matches 1.. run worldborder set 205 2
execute if score hyperia Hyperia matches 1.. run worldborder set 370 2
execute if score hailstone Hailstone matches 1.. run worldborder set 300 2
execute if score meridian Meridian matches 1.. run worldborder set 300 2
execute if score twinpass TwinPass matches 1.. run worldborder set 230 2
execute if score kawaiinislands KawaiinIslands matches 1.. run worldborder set 540 2
execute if score diamondheights DiamondHeights matches 1.. run worldborder set 250 2
execute if score nazgard Nazgard matches 1.. run worldborder set 250 2
execute if score end End matches 1.. run worldborder set 360 2
execute if score oakendale Oakendale matches 1.. run worldborder set 400 2
execute if score etherea Etherea matches 1.. run worldborder set 200 2
execute if score incatasia Incatasia matches 1.. run worldborder set 275 2
execute if score amaria Amaria matches 1.. run worldborder set 440 2
execute if score tempus Tempus matches 1.. run worldborder set 150 2
execute if score biggerton Biggerton matches 1.. run worldborder set 200 2
execute if score queenmary2 QueenMary2 matches 1 run worldborder set 725 2
execute if score redstoneAcademy redstoneAcademy matches 1.. run worldborder set 150 2
execute if score poseidon Poseidon matches 1.. run worldborder set 725 2
execute if score acclamator Acclamator matches 1.. run worldborder set 725 2

# Kill Entities
kill @e[type=silverfish]
kill @e[type=ravager]
kill @e[type=pillager]
kill @e[type=wither]
kill @e[type=warden]
kill @e[type=ghast]
kill @e[type=wither_skull]
kill @e[type=chicken]
kill @e[type=husk]
kill @e[type=arrow]
kill @e[type=stray]
kill @e[type=bogged]
kill @e[type=breeze]
kill @e[type=breeze_wind_charge]
kill @e[type=bat]
kill @e[type=guardian]

tag @a remove seekerWait
time set 7000
tp @a @e[tag=lobby, limit=1]
bossbar set timer value 0
bossbar set hidingtimer value 64
bossbar set timer visible false
bossbar set hidingtimer visible false
scoreboard players set swap swap 0
scoreboard players reset @a radar
scoreboard players set #game gameRunning 0

# OST
execute if score nazgard Nazgard matches 1 run stopsound @a * hideseek:nether
execute if score end End matches 1 run stopsound @a * hideseek:theend
execute if score hailstone Hailstone matches 1 run stopsound @a * hideseek:hailstone
stopsound @a * hideseek:jokers

# SFX
stopsound @a * hideseek:roller