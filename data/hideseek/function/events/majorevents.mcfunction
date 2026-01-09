# Generate a random number
function hideseek:events/roller

# Run the event corresponding with the randomly generated number
execute if score #randInt randInt matches 1..5 run function hideseek:events/initzombies
execute if score #randInt randInt matches 6..10 run function hideseek:events/initswap
execute if score #randInt randInt matches 11..15 run function hideseek:events/disableteleports/disable
execute unless score darkpeak DarkPeak matches 1 if score #randInt randInt matches 16..19 run function hideseek:events/surprisebang
execute if score darkpeak DarkPeak matches 1 if score #randInt randInt matches 16..19 run function hideseek:events/phantoms/phantoms
execute if score #randInt randInt matches 20..21 run function hideseek:events/wither
execute unless score darkpeak DarkPeak matches 1 if score #randInt randInt matches 22..25 run function hideseek:events/guardian/guardians
execute if score darkpeak DarkPeak matches 1 if score #randInt randInt matches 22..25 run function hideseek:events/wardenflurry/wardens
execute if score #randInt randInt matches 26..29 run function hideseek:events/breeze/breeze
execute if score #randInt randInt matches 30..31 run function hideseek:events/killerbunny/killerbunny