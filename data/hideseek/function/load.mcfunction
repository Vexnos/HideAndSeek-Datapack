team add 1 "Hider"
team modify 1 collisionRule never
team modify 1 color red
team modify 1 friendlyFire false
team modify 1 nametagVisibility hideForOtherTeams
team modify 1 prefix "[Hider] "
team add 2 "Seeker"
team modify 2 collisionRule never
team modify 2 color blue
team modify 2 friendlyFire false
team modify 2 nametagVisibility hideForOtherTeams
team modify 2 prefix "[Seeker] "
team add 3 "Be Nice"
team modify 3 collisionRule always
team modify 3 nametagVisibility always
team modify 3 friendlyFire false
team add 4 "Guardians"
team modify 4 color green
gamerule mobGriefing false
scoreboard objectives add out dummy "out"
scoreboard objectives add hiding dummy "hiding"
scoreboard objectives add time dummy {"text":"Time","color":"yellow"}
scoreboard objectives add minutes dummy
# scoreboard objectives setdisplay sidebar time
scoreboard objectives add spectator killedByTeam.blue "spectator"
scoreboard objectives add deaths deathCount
scoreboard objectives add CrownPeak dummy
scoreboard objectives add Felora dummy
scoreboard objectives add Tartarus dummy
scoreboard objectives add Hyperia dummy
scoreboard objectives add Hailstone dummy
scoreboard objectives add Nazgard dummy
scoreboard objectives add Meridian dummy
scoreboard objectives add Kaelos dummy
scoreboard objectives add TwinPass dummy
scoreboard objectives add KawaiinIslands dummy
scoreboard objectives add DiamondHeights dummy
scoreboard objectives add Ataraxia dummy
scoreboard objectives add HOA dummy
scoreboard objectives add Tempus dummy
scoreboard objectives add End dummy
scoreboard objectives add Oakendale dummy
scoreboard objectives add Etherea dummy
scoreboard objectives add Incatasia dummy
scoreboard objectives add Amaria dummy
scoreboard objectives add Biggerton dummy
scoreboard objectives add QueenMary2 dummy
scoreboard objectives add redstoneAcademy dummy
scoreboard objectives add Poseidon dummy
scoreboard objectives add Acclamator dummy
scoreboard objectives add Markar dummy
scoreboard objectives add DarkPeak dummy
scoreboard objectives add Hindenburg dummy
scoreboard objectives add Nestoria dummy
scoreboard objectives add Pavlopetri dummy
scoreboard objectives add Antinazgard dummy
scoreboard objectives add Antiend dummy
scoreboard objectives add seekerAmount dummy
title @a actionbar {"text":"The game is ready to go!","color":"green"}
playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~ 100 1
scoreboard objectives add pingEnabled dummy
scoreboard objectives add glowingEnabled dummy
scoreboard objectives add mobsEnabled dummy
scoreboard objectives add minionsEnabled dummy
scoreboard objectives add raycastEnabled dummy
scoreboard objectives add radarEnabled dummy
scoreboard objectives add velocity dummy
scoreboard objectives add gameRunning dummy
scoreboard objectives add spreadPlayers dummy
scoreboard objectives add swap dummy
scoreboard objectives add zombieTimer dummy
scoreboard objectives add breezeTimer dummy
scoreboard objectives add guardianTimer dummy
scoreboard objectives add wardenTimer dummy
scoreboard objectives add phantomTimer dummy
scoreboard objectives add randInt dummy
scoreboard objectives add majorEvent dummy
scoreboard objectives add minorEvent dummy
scoreboard objectives add countdown dummy
scoreboard objectives add mcountdown dummy
scoreboard objectives add eventsEnabled dummy
scoreboard objectives add mountsEnabled dummy
scoreboard objectives add range dummy
scoreboard objectives add radar dummy
scoreboard objectives add radarEnabled dummy
scoreboard objectives add hidingTime dummy
scoreboard players set out out 0
scoreboard objectives add nearbyTeleports dummy

# Timer Bossbar
bossbar add timer {"text":"Time","color":"yellow"}
bossbar set timer color yellow
bossbar set timer max 600
bossbar set timer value 0
bossbar set timer players @a
bossbar set timer style notched_10
bossbar add hidingtimer {"text":"Time to Hide","color":"red"}
bossbar set hidingtimer color red
bossbar set hidingtimer max 64
bossbar set hidingtimer value 64
bossbar set hidingtimer players @a

function hideseek:saturation
function hideseek:jungleleaves
function hideseek:ping
function hideseek:main_10t