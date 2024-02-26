execute if score crownpeak CrownPeak matches 1.. run worldborder set 150 30
execute if score felora Felora matches 1.. run worldborder set 100 30
execute if score tartarus Tartarus matches 1.. run worldborder set 125 30
title @a actionbar {"text":"The world border is shrinking!","color":"red","bold":"true"}
playsound minecraft:entity.ender_dragon.growl ambient @a ~ ~ ~ 100 1
schedule function hideseek:border2 150s