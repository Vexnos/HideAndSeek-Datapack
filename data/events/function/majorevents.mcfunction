function events:roller
execute if score #randInt randInt matches 1..5 run function events:initzombies
execute if score #randInt randInt matches 6..15 run function events:initswap
execute if score #randInt randInt matches 16..19 run function events:surprisebang
execute if score #randInt randInt matches 20 run function events:wither