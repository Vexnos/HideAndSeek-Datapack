execute if score crownpeak CrownPeak matches 1.. run worldborder set 150 30
execute if score felora Felora matches 1.. run worldborder set 100 30
execute if score tartarus Tartarus matches 1.. run worldborder set 125 30
execute if score hyperia Hyperia matches 1.. run worldborder set 200 30
execute if score hailstone Hailstone matches 1.. run worldborder set 200 30
execute if score meridian Meridian matches 1.. run worldborder set 200 30
execute if score twinpass TwinPass matches 1.. run worldborder set 150 30
execute if score kawaiinislands KawaiinIslands matches 1.. run worldborder set 400 30
execute if score diamondheights DiamondHeights matches 1.. run worldborder set 150 30
execute if score nazgard Nazgard matches 1.. run worldborder set 175 30
execute if score end End matches 1.. run worldborder set 200 30
title @a actionbar {"text":"The world border is shrinking!","color":"red","bold":"true"}
playsound minecraft:entity.ender_dragon.growl ambient @a ~ ~ ~ 100 1
execute unless score diamondheights DiamondHeights matches 1.. run execute unless score end End matches 1.. run schedule function hideseek:border2 150s