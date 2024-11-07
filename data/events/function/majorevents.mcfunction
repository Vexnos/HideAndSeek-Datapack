function events:roller
execute if score #randInt randInt matches 1..5 run function events:initzombies
execute if score #randInt randInt matches 6..10 run function events:initswap
execute if score #randInt randInt matches 11..19 run function events:minorevents
execute if score #randInt randInt matches 20 run function events:wither