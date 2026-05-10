# Game Over title
execute if score hiders hiding > out out run title @a title [{type:"object",object:"atlas",atlas:"minecraft:items",sprite:"item/nether_star"},{"text":" Hiders Win! ","color":"red"},{type:"object",object:"atlas",atlas:"minecraft:items",sprite:"item/nether_star"}]
execute if score hiders hiding > out out as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s
execute if score hiders hiding <= out out run title @a title [{type:"object",object:"atlas",atlas:"minecraft:items",sprite:"item/nether_star"},{"text":" Seekers Win! ","color":"blue"},{type:"object",object:"atlas",atlas:"minecraft:items",sprite:"item/nether_star"}]
execute if score hiders hiding <= out out as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s

# Points for Stats
execute unless score #test playTesting matches 1 if score #trackStats trackStats matches 1 run execute as @a[team=1] if score hiders hiding > out out if entity @s[tag=!out] run scoreboard players add @s winsAsHider 1
execute unless score #test playTesting matches 1 if score #trackStats trackStats matches 1 run execute as @a[team=2] if score hiders hiding <= out out run scoreboard players add @s winsAsSeeker 1

execute at @e[tag=lobby,limit=1] run spawnpoint @a ~ ~ ~
effect clear @a

# Previous Seeker tag
tag @a[team=2] add last_seeker

# Teams
team leave @a
team join 3 @a

# Kill Mount Entities
kill @e[type=snowball]
kill @e[type=egg]
kill @e[type=spectral_arrow]
kill @e[type=trident]

gamemode adventure @a
clear @a

# Clear scheduled functions
schedule clear hideseek:timer
schedule clear hideseek:hidingtimer
schedule clear hideseek:reset
schedule clear hideseek:border1
schedule clear hideseek:border2
schedule clear hideseek:seek
schedule clear hideseek:finalminute
schedule clear hideseek:events/initmevent
schedule clear hideseek:events/initevent
schedule clear hideseek:events/countdown
schedule clear hideseek:events/mcountdown
schedule clear hideseek:events/roller
schedule clear hideseek:events/majorevents
schedule clear hideseek:events/minorevents
schedule clear hideseek:events/zombies
schedule clear hideseek:events/creeper
schedule clear hideseek:events/trayaurus/trayaurus
schedule clear hideseek:events/trayaurus/teleportthere
schedule clear hideseek:events/trayaurus/teleportback
schedule clear hideseek:events/disableteleports/enable
schedule clear hideseek:events/guardian/summon
schedule clear hideseek:events/phantoms/summon
schedule clear hideseek:events/breeze/summon
schedule clear hideseek:events/wardenflurry/summon
schedule clear hideseek:events/killerbunny/summon
schedule clear hideseek:events/zombies
schedule clear hideseek:ping
schedule clear hideseek:darkping
schedule clear hideseek:events/timelord/teleport

# Scoreboards
scoreboard players reset @a spectator
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
scoreboard players set #wardenTimer wardenTimer 0
scoreboard players set #phantomTimer phantomTimer 0
scoreboard players set #bunnyTimer bunnyTimer 0
scoreboard players set #mountsEnabled mountsEnabled 1
scoreboard players set swap swap 0
scoreboard players reset @a radar
scoreboard players set #game gameRunning 0
scoreboard players set #trackStats trackStats 0
scoreboard players reset @a shardsUsed
scoreboard players reset @e uuid0
scoreboard players reset @e uuid1
scoreboard players reset @e uuid2
scoreboard players reset @e uuid3

# Tags
tag @a remove out
tag @a remove notswap
tag @a remove seekerWait
tag @a remove itemsGiven
tag @a remove tp1
tag @a remove tp2
tag @a remove tp3
tag @a remove tp4
tag @a remove tp5
tag @a remove tp6
tag @a remove tp7
tag @a remove tp8
tag @a remove swap1
tag @a remove swap2
tag @a remove swap3
tag @a remove swap4
tag @a remove swap5
tag @a remove swap6
tag @a remove swap7
tag @a remove swap8
tag @a remove swap9
tag @a remove swap10
tag @a remove swap11
tag @a remove swap12

# Reset Worldborder
execute if score crownpeak CrownPeak matches 1.. run worldborder set 200 2s
execute if score felora Felora matches 1.. run worldborder set 150 2s
execute if score paleora Paleora matches 1.. run worldborder set 151 2s
execute if score tartarus Tartarus matches 1.. run worldborder set 205 2s
execute if score hyperia Hyperia matches 1.. run worldborder set 370 2s
execute if score hailstone Hailstone matches 1.. run worldborder set 300 2s
execute if score meridian Meridian matches 1.. run worldborder set 300 2s
execute if score twinpass TwinPass matches 1.. run worldborder set 230 2s
execute if score kawaiinislands KawaiinIslands matches 1.. run worldborder set 540 2s
execute if score diamondheights DiamondHeights matches 1.. run worldborder set 250 2s
execute if score nazgard Nazgard matches 1.. in the_nether run worldborder set 250 2s
execute if score end End matches 1.. in the_end run worldborder set 360 2s
execute if score oakendale Oakendale matches 1.. run worldborder set 400 2s
execute if score etherea Etherea matches 1.. run worldborder set 200 2s
execute if score incatasia Incatasia matches 1.. run worldborder set 275 2s
execute if score amaria Amaria matches 1.. run worldborder set 440 2s
execute if score tempus Tempus matches 1.. run worldborder set 150 2s
execute if score biggerton Biggerton matches 1.. run worldborder set 200 2s
execute if score queenmary2 QueenMary2 matches 1 run worldborder set 725 2s
execute if score redstoneAcademy redstoneAcademy matches 1.. run worldborder set 150 2s
execute if score poseidon Poseidon matches 1.. run worldborder set 725 2s
execute if score acclamator Acclamator matches 1.. in hideseek:acclamator run worldborder set 725 2s
execute if score markar Markar matches 1.. run worldborder set 200 2s
execute if score kaelos Kaelos matches 1.. run worldborder set 200 2s
execute if score darkpeak DarkPeak matches 1.. run worldborder set 200 2s
execute if score nestoria Nestoria matches 1.. run worldborder set 350 2s
execute if score hindenburg Hindenburg matches 1.. run worldborder set 550 2s
execute if score pavlopetri Pavlopetri matches 1.. run worldborder set 205 2s
execute if score antinazgard Antinazgard matches 1.. in the_end run worldborder set 249 2s
execute if score passtwin Passtwin matches 1.. in hideseek:lobby run worldborder set 230 2s
execute if score paleora Paleora matches 1.. in hideseek:lobby run worldborder set 150 2s
execute if score cathedral Cathedral matches 1.. in hideseek:cathedral run worldborder set 1150 2s
execute if score hailstorm Hailstorm matches 1.. in hideseek:hailstorm run worldborder set 300 2s
execute if score venator Venator matches 1.. in hideseek:venator run worldborder set 1225 2s
execute if score newworld NewWorld matches 1.. in hideseek:newworld run worldborder set 200 2s
execute if score ataraxia Ataraxia matches 1.. run worldborder set 300 2s
execute if score donut Donut matches 1.. in hideseek:donut run worldborder set 250 2s
execute if score castle Castle matches 1.. in hideseek:castle run worldborder set 100 2s
execute if score imperator Imperator matches 1.. in hideseek:imperator run worldborder set 350 2s
execute if score atlantide Atlantide matches 1.. in hideseek:atlantide run worldborder set 850 2s

# Kill Mobs
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
kill @e[type=stray,tag=!NoKill]
kill @e[type=bogged]
kill @e[type=breeze]
kill @e[type=breeze_wind_charge]
kill @e[type=bat]
kill @e[type=vex]
kill @e[type=blaze]
kill @e[type=zombie,tag=!dummy]
kill @e[type=guardian,tag=event]
kill @e[type=drowned,tag=seekerguardian]
kill @e[type=drowned,tag=!NoKill]
kill @e[type=rabbit,nbt={RabbitType:99}]
kill @e[type=mannequin,tag=!NoKill]
kill @e[type=armor_stand,tag=dummy]
kill @e[type=marker]

# Reset Time
execute unless score paleora Paleora matches 1 run time set 7000

# Back to Lobby
tp @a @e[tag=lobby, limit=1]

# Bossbar Reset
bossbar set timer value 0
bossbar set hidingtimer value 64
bossbar set timer visible false
bossbar set hidingtimer visible false

# OST
execute if score nazgard Nazgard matches 1 run stopsound @a * hideseek:nether
execute if score end End matches 1 run stopsound @a * hideseek:theend
execute if score hailstone Hailstone matches 1 run stopsound @a * hideseek:hailstone
stopsound @a * hideseek:jokers

# SFX
stopsound @a * hideseek:roller