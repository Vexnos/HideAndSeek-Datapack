# Teams
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

# Disable MobGriefing
gamerule mob_griefing false

# Game Scoreboards
scoreboard objectives add out dummy "out"
scoreboard objectives add hiding dummy "hiding"
scoreboard objectives add time dummy {"text":"Time","color":"yellow"}
scoreboard objectives add minutes dummy
# scoreboard objectives setdisplay sidebar time
scoreboard objectives add spectator killedByTeam.blue "spectator"
scoreboard objectives add deaths deathCount
scoreboard objectives add settings dummy
scoreboard objectives add velocity dummy
scoreboard players set out out 0
scoreboard objectives add nearbyTeleports dummy
scoreboard objectives add range dummy
scoreboard objectives add radar dummy
scoreboard objectives add shardsUsed minecraft.used:minecraft.amethyst_shard

# Map Scoreboards
scoreboard objectives add map dummy

# Trigger Scoreboards
scoreboard objectives add start trigger
scoreboard objectives add seek trigger
scoreboard objectives add reset trigger
scoreboard objectives add border1 trigger
scoreboard objectives add border2 trigger
scoreboard objectives add creepers trigger
scoreboard objectives add killerbunnies trigger
scoreboard objectives add initguardians trigger
scoreboard objectives add wardens trigger
scoreboard objectives add zombies trigger
scoreboard objectives add initswap trigger
scoreboard objectives add breezes trigger
scoreboard objectives add absdoom trigger
scoreboard objectives add disableteleports trigger
scoreboard objectives add phantoms trigger
scoreboard objectives add wither trigger

# Event Scoreboards
scoreboard objectives add swap dummy
scoreboard objectives add randInt dummy
scoreboard objectives add majorEvent dummy
scoreboard objectives add minorEvent dummy
scoreboard objectives add countdown dummy
scoreboard objectives add mcountdown dummy

# Stats Scoreboards
scoreboard objectives add winsAsHider dummy {text:"Wins as Hider",color:"red"}
scoreboard objectives add winsAsSeeker dummy {text:"Wins as Seeker",color:"blue"}
function hideseek:display_scores

scoreboard players set #max winsAsHider -2147483648
scoreboard players set #max winsAsSeeker -2147483648

# UUIDs
scoreboard objectives add uuid0 dummy
scoreboard objectives add uuid1 dummy
scoreboard objectives add uuid2 dummy
scoreboard objectives add uuid3 dummy

# Timer Bossbar
# bossbar add timer {"text":"Time","color":"yellow"}
# bossbar set timer color yellow
# bossbar set timer max 600
# bossbar set timer value 0
# bossbar set timer players @a
# bossbar set timer style notched_10
# bossbar add hidingtimer {"text":"Time to Hide","color":"red"}
# bossbar set hidingtimer color red
# bossbar set hidingtimer max 64
# bossbar set hidingtimer value 64
# bossbar set hidingtimer players @a

# Confirmation Message
title @a actionbar {"text":"The game is ready to go!","color":"green"}
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Start scheduled functions
function hideseek:saturation
function hideseek:jungleleaves
function hideseek:ping
function hideseek:main_10t