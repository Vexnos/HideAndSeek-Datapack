# Check Map
execute if score crownpeak CrownPeak matches 1.. run worldborder set 75 30s
execute if score darkpeak DarkPeak matches 1.. run worldborder set 75 30s
execute if score felora Felora matches 1.. run worldborder set 75 30s
execute if score paleora Paleora matches 1.. in hideseek:lobby run worldborder set 75 30s
execute if score tartarus Tartarus matches 1.. run worldborder set 75 30s
execute if score hyperia Hyperia matches 1.. run worldborder set 100 30s
execute if score hailstone Hailstone matches 1.. run worldborder set 100 30s
execute if score hailstorm Hailstorm matches 1.. in hideseek:hailstorm run worldborder set 100 30s
execute if score meridian Meridian matches 1.. run worldborder set 100 30s
execute if score twinpass TwinPass matches 1.. run worldborder set 100 30s
execute if score kawaiinislands KawaiinIslands matches 1.. run worldborder set 300 30s
execute if score nazgard Nazgard matches 1.. in the_nether run worldborder set 100 30s
execute if score antinazgard Antinazgard matches 1.. in the_end run worldborder set 100 30s
execute if score incatasia Incatasia matches 1.. run worldborder set 150 30s
execute if score oakendale Oakendale matches 1.. run worldborder set 150 30s
execute if score amaria Amaria matches 1.. run worldborder set 150 30s
execute if score diamondheights DiamondHeights matches 1.. run worldborder set 100 30s
execute if score biggerton Biggerton matches 1.. run worldborder set 75 30s
execute if score end End matches 1 in the_end run worldborder set 125 30s
execute if score queenmary2 QueenMary2 matches 1 run worldborder set 100 30s
execute if score poseidon Poseidon matches 1 run worldborder set 150 60s
execute if score acclamator Acclamator matches 1 in hideseek:acclamator run worldborder set 150 60s
execute if score nestoria Nestoria matches 1 run worldborder set 200 30s
execute if score pavlopetri Pavlopetri matches 1.. run worldborder set 75 30s
execute if score cathedral Cathedral matches 1.. in hideseek:cathedral run worldborder set 200 60s
execute if score ataraxia Ataraxia matches 1.. run worldborder set 125 25s
execute if score donut Donut matches 1.. in hideseek:donut run worldborder set 150 30s
execute if score atlantide Atlantide matches 1.. in hideseek:atlantide run worldborder set 125 45s

# Warning Message
tellraw @a {"text":"The world border is shrinking!","color":"red","bold":true}

# Sound
execute as @a at @a run playsound minecraft:entity.ender_dragon.growl ambient @s ~ ~ ~ 100 1
execute as @r at @s run playsound minecraft:entity.wither.spawn ambient @a ~ ~ ~ 100 1