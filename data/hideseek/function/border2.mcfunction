execute if score crownpeak CrownPeak matches 1.. run worldborder set 75 30
execute if score darkpeak DarkPeak matches 1.. run worldborder set 75 30
execute if score felora Felora matches 1.. run worldborder set 75 30
execute if score tartarus Tartarus matches 1.. run worldborder set 75 30
execute if score hyperia Hyperia matches 1.. run worldborder set 100 30
execute if score hailstone Hailstone matches 1.. run worldborder set 100 30
execute if score meridian Meridian matches 1.. run worldborder set 100 30
execute if score twinpass TwinPass matches 1.. run worldborder set 100 30
execute if score kawaiinislands KawaiinIslands matches 1.. run worldborder set 300 30
execute if score nazgard Nazgard matches 1.. run worldborder set 100 30
execute if score incatasia Incatasia matches 1.. run worldborder set 150 30
execute if score oakendale Oakendale matches 1.. run worldborder set 150 30
execute if score amaria Amaria matches 1.. run worldborder set 150 30
execute if score diamondheights DiamondHeights matches 1.. run worldborder set 100 30
execute if score biggerton Biggerton matches 1.. run worldborder set 75 30
execute if score end End matches 1 run worldborder set 125 30
execute if score queenmary2 QueenMary2 matches 1 run worldborder set 100 30
execute if score poseidon Poseidon matches 1 run worldborder set 150 60
execute if score acclamator Acclamator matches 1 run worldborder set 150 60
execute if score nestoria Nestoria matches 1 run worldborder set 200 30
execute if score pavlopetri Pavlopetri matches 1.. run worldborder set 75 30
tellraw @a {"text":"The world border is shrinking!","color":"red","bold":true}
execute as @a at @a run playsound minecraft:entity.ender_dragon.growl ambient @s ~ ~ ~ 100 1
execute as @r at @s run playsound minecraft:entity.wither.spawn ambient @a ~ ~ ~ 100 1