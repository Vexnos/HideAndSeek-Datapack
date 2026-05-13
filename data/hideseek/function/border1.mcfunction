# Check Map
execute if score crownPeak map matches 1.. run worldborder set 150 30s
execute if score darkPeak map matches 1.. run worldborder set 150 30s
execute if score felora map matches 1.. run worldborder set 100 30s
execute if score paleora map matches 1.. in hideseek:lobby run worldborder set 100 30s
execute if score tartarus map matches 1.. run worldborder set 125 30s
execute if score hyperia map matches 1.. run worldborder set 200 30s
execute if score hailstone map matches 1.. run worldborder set 200 30s
execute if score hailstorm map matches 1.. in hideseek:hailstorm run worldborder set 200 30s
execute if score meridian map matches 1.. run worldborder set 200 30s
execute if score twinPass map matches 1.. run worldborder set 150 30s
execute if score kawaiinIslands map matches 1.. run worldborder set 400 30s
execute if score diamondHeights map matches 1.. run worldborder set 150 30s
execute if score nazgard map matches 1.. in the_nether run worldborder set 175 30s
execute if score antiNazgard map matches 1.. in the_end run worldborder set 175 30s
execute if score end map matches 1.. in the_end run worldborder set 200 30s
execute if score etherea map matches 1.. run worldborder set 150 30s
execute if score incatasia map matches 1.. run worldborder set 200 30s
execute if score oakendale map matches 1.. run worldborder set 250 30s
execute if score amaria map matches 1.. run worldborder set 250 30s
execute if score biggerton map matches 1.. run worldborder set 150 30s
execute if score queenMary2 map matches 1 run worldborder set 400 60s
execute if score poseidon map matches 1 run worldborder set 400 60s
execute if score acclamator map matches 1 in hideseek:acclamator run worldborder set 400 60s
execute if score nestoria map matches 1 run worldborder set 275 30s
execute if score pavlopetri map matches 1.. run worldborder set 125 30s
execute if score cathedral map matches 1.. in hideseek:cathedral run worldborder set 400 120s
execute if score ataraxia map matches 1.. run worldborder set 200 30s
execute if score donut map matches 1.. in hideseek:donut run worldborder set 200 30s
execute if score atlantide map matches 1.. in hideseek:atlantide run worldborder set 350 45s

# Warning Message
tellraw @a {"text":"The world border is shrinking!","color":"red","bold":true}

# Sounds
execute as @a at @a run playsound minecraft:entity.ender_dragon.growl ambient @s ~ ~ ~ 100 1
execute as @r at @s run playsound minecraft:entity.wither.spawn ambient @a ~ ~ ~ 100 1

# Don't shrink the border twice for Etherea
execute unless score etherea map matches 1.. unless score cathedral map matches 1 unless score atlantide map matches 1 run schedule function hideseek:border2 150s
execute if score cathedral map matches 1 run schedule function hideseek:border2 450s
execute if score atlantide map matches 1 run schedule function hideseek:border2 450s