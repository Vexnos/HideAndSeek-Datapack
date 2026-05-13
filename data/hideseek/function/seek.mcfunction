# Items for Seekers (This is an eyesore)
execute as @a[team=2] run function hideseek:seekeritems

# Tags
tag @a[team=2] remove seekerWait

# Seeker Effects
effect give @a[team=2] speed infinite 3 true
effect give @a[team=2] dolphins_grace infinite 0 true
effect give @a[team=2] fire_resistance infinite 0 true

# Teleport Seeker to Spawn
tp @a[team=2] @e[tag=start, limit=1]

# Titles
title @a[team=2] title {"text":"It's time to seek!","color":"blue"}
title @a[team=1] title {"text":"The seeker is released!","color":"blue"}

# Sounds
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s
execute as @a at @s run playsound minecraft:entity.evoker.prepare_attack master @s

# give @a[team=2] fishing_rod[unbreakable={},enchantment_glint_override=true,rarity=epic,custom_name='{"text":"Grappling Hook","italic":false}']

# Start the Timer
schedule function hideseek:timer 1s

# Give an Egg to Hiders except on certain Maps
execute unless score end map matches 1.. unless score antiNazgard map matches 1.. unless score passTwin map matches 1.. run give @a[team=1] egg[item_name={"text":"Make the Seeker go away","color":"blue","italic":false}] 1

# OST
# execute if score nazgard map matches 1 as @a at @s run playsound hideseek:nether record @s
# execute if score end map matches 1 as @a at @s run playsound hideseek:theend record @s
# execute if score hailstone map matches 1 as @a at @s run playsound hideseek:hailstone record @s
# stopsound @a * hideseek:jokers

# Reset
execute unless score HOA map matches 1.. unless score newWorld map matches 1 unless score cathedral map matches 1 unless score atlantide map matches 1 run schedule function hideseek:reset 600s
execute if score HOA map matches 1.. run schedule function hideseek:reset 450s
execute if score newWorld map matches 1 run schedule function hideseek:reset 300s
execute if score cathedral map matches 1 run schedule function hideseek:reset 1200s
execute if score atlantide map matches 1 run schedule function hideseek:reset 1200s

# Events
execute unless score events settings matches 0 unless score HOA map matches 1 run schedule function hideseek:events/initmevent 150s
execute unless score events settings matches 0 unless score HOA map matches 1 run schedule function hideseek:events/initevent 60s
execute if score mobs settings matches 1.. run execute unless score HOA map matches 1.. unless score cathedral map matches 1 unless score atlantide map matches 1 run schedule function hideseek:finalminute 540s

execute if score mobs settings matches 1 if score cathedral map matches 1 run schedule function hideseek:finalminute 1140s
execute if score mobs settings matches 1 if score atlantide map matches 1 run schedule function hideseek:finalminute 1140s

# Worldborder
execute unless score kaelos map matches 1.. run execute unless score castle map matches 1 run execute unless score imperator map matches 1 run execute unless score tempus map matches 1.. run execute unless score HOA map matches 1.. run execute unless score redstoneAcademy map matches 1 run execute unless score markar map matches 1 unless score hindenburg map matches 1 unless score passTwin map matches 1 unless score venator map matches 1 unless score newWorld map matches 1 unless score cathedral map matches 1 unless score atlantide map matches 1 run schedule function hideseek:border1 300s

execute if score cathedral map matches 1 run schedule function hideseek:border1 600s
execute if score atlantide map matches 1 run schedule function hideseek:border1 600s

# Ping
execute unless score darkPeak map matches 1 run function hideseek:ping
execute if score darkPeak map matches 1 run function hideseek:darkping

# Clear Hider Effects
effect clear @a[team=2] blindness
effect clear @a[team=1] invisibility

# Clear this function from a schedule in case the game needs to reset early
schedule clear hideseek:seek

# Track Stats
scoreboard players set trackStats settings 1

# Bossbar
bossbar set timer players @a
bossbar set hidingtimer visible false
bossbar set timer visible true