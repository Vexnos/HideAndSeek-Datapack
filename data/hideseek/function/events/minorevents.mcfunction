# Generate a random number
function hideseek:events/roller

# Run the event corresponding with the randomly generated number
execute if score #randInt randInt matches 1..5 run effect give @a[team=1,tag=!out] blindness 5 0 false
execute if score #randInt randInt matches 6..10 run effect give @a[tag=!out] speed 10 2 false
execute if score #randInt randInt matches 11..15 run effect give @a[tag=!out] poison 10 3 false
execute if score #randInt randInt matches 16..20 run effect give @a[tag=!out] slowness 10 3 false
execute if score #randInt randInt matches 21..24 run effect give @a[team=1,tag=!out] resistance 10 5 false
execute if score #randInt randInt matches 25..29 run effect give @a[tag=!out] nausea 10 5 false
execute if score #randInt randInt matches 30 run function hideseek:events/trayaurus/trayaurus

# Sounds
execute as @a at @s run playsound entity.zombie_villager.cure master @s ~ ~ ~ 25 1