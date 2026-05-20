# Scoreboards
scoreboard players reset @a deaths
scoreboard players set swap swap 0
scoreboard players set out players 0

# Teams and Game Start
team leave @a
clear @a
gamemode adventure @a
function hideseek:seeker/seekers
team join 1 @a[sort=random,team=!2]
execute as @a[team=1] run scoreboard players add hiding players 1
execute as @a[team=1] run scoreboard players add swap swap 1
tag @a[team=2] add seekerWait
tag @a remove notswap
tag @a remove last_seeker

# If tag mode
execute if score tag settings matches 1 run team modify 1 seeFriendlyInvisibles false
execute if score tag settings matches 1 run team modify 1 nametagVisibility never
execute unless score tag settings matches 1 run team modify 1 seeFriendlyInvisibles true
execute unless score tag settings matches 1 run team modify 1 nametagVisibility hideForOtherTeams

# Teleportation
tp @a[team=1] @e[tag=start,limit=1]

# Effects
effect give @a[team=1] minecraft:invisibility 64 0 true
effect give @a[team=2] minecraft:blindness 64 0 true
execute unless score darkPeak map matches 1 unless score pavlopetri map matches 1 unless score antiNazgard map matches 1 unless score antiEnd map matches 1 unless score hailstorm map matches 1 unless score paleora map matches 1 run effect give @a[team=2] minecraft:resistance infinite 255 true

# Pavlopetri Effects
execute if score pavlopetri map matches 1 run effect give @a water_breathing infinite 0 true
execute if score pavlopetri map matches 1 run effect give @a[team=1] dolphins_grace infinite 0 true
execute if score pavlopetri map matches 1 run effect give @a[team=2] dolphins_grace infinite 1 true

# Items for Hiders
execute as @a[team=1] run function hideseek:hider/hideritems
execute if score cathedral map matches 1 as @a[team=1] run function hideseek:hider/doubleitems
execute if score atlantide map matches 1 as @a[team=1] run function hideseek:hider/doubleitems

# Universal Items
execute if score ataraxia map matches 1.. run item replace entity @a armor.chest with elytra[enchantment_glint_override=true,unbreakable={}]
execute if score cathedral map matches 1.. run item replace entity @a armor.chest with elytra[enchantment_glint_override=true,unbreakable={}]
execute if score venator map matches 1.. run item replace entity @a armor.chest with elytra[enchantment_glint_override=true,unbreakable={}]
execute if score passTwin map matches 1.. run item replace entity @a armor.chest with elytra[enchantment_glint_override=true,unbreakable={}]
execute if score HOA map matches 1.. run item replace entity @a armor.chest with elytra[enchantment_glint_override=true,unbreakable={}]
execute if score end map matches 1.. run item replace entity @a armor.chest with elytra[enchantment_glint_override=true,unbreakable={}]
execute if score antiNazgard map matches 1.. run item replace entity @a armor.chest with elytra[enchantment_glint_override=true,unbreakable={}]

# Titles and Tellraws
title @a[team=1] actionbar {"text":"You are a hider! Stay hidden from the seeker to win!","color":"red"}
title @a[team=2] actionbar {"text":"You are seeking! Find the other players to win!","color":"blue"}

# Sounds
playsound minecraft:ambient.cave ambient @a[team=1] ~ ~ ~ 100 1

# Spawnpoint
execute at @e[tag=start,limit=1] run spawnpoint @a[team=2] ~ ~ ~

# Bossbar
bossbar set hidingtimer players @a
bossbar set hidingtimer visible true
bossbar set timer visible false
bossbar set hidingtimer value 64

# Enable Glowing on Hindenburg
# execute if score hindenburg map matches 1 run scoreboard players set glowing settings 1
# execute unless score hindenburg map matches 1 run scoreboard players set glowing settings 0

# Spread Players
execute if score spreadPlayers settings matches 1 as @a[team=1] at @e[tag=start,limit=1] run spreadplayers ~ ~ 75 100 true @s

# Get UUIDS
execute as @a store result score @s uuid0 run data get entity @s UUID[0]
execute as @a store result score @s uuid1 run data get entity @s UUID[1]
execute as @a store result score @s uuid2 run data get entity @s UUID[2]
execute as @a store result score @s uuid3 run data get entity @s UUID[3]

# Set the game as running
scoreboard players set gameRunning settings 1
function hideseek:hidingtimer
schedule function hideseek:seek 64s

# OST
# execute as @a at @s run playsound hideseek:jokers record @s