# Generate a random number
function events:roller

# Run the event corresponding with the randomly generated number
execute if score #randInt randInt matches 1..5 run effect give @a[team=1] blindness 5 0 false
execute if score #randInt randInt matches 6..10 run effect give @a speed 10 2 false
execute if score #randInt randInt matches 11..15 run effect give @a poison 10 3 false
execute if score #randInt randInt matches 16..20 run effect give @a slowness 10 3 false
execute if score #randInt randInt matches 21..24 run effect give @a[team=1] resistance 10 5 false
execute if score #randInt randInt matches 25..29 run effect give @a nausea 10 5 false
execute if score #randInt randInt matches 30 run function events:trayaurus/trayaurus

# Sounds
execute as @a at @s run playsound entity.zombie_villager.cure master @s ~ ~ ~ 25 1