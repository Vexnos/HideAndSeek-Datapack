function events:roller
execute if score #randInt randInt matches 1..5 run function events:initzombies
execute if score #randInt randInt matches 6..15 run function events:initswap
execute if score #randInt randInt matches 16..19 run function events:surprisebang
execute if score #randInt randInt matches 22..25 run function events:guardian/guardians
execute if score #randInt randInt matches 26..29 run function events:breeze/breeze
execute if score #randInt randInt matches 20..21 run function events:wither