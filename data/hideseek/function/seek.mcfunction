effect give @a[team=2] speed infinite 3 true
effect give @a[team=2] dolphins_grace infinite 0 true
tp @a[team=2] @e[tag=start, limit=1]
title @a[team=2] title {"text":"It's time to seek!","color":"blue"}
execute at @a run playsound minecraft:entity.ender_dragon.growl ambient @a ~ ~ ~ 100 1
execute at @a run playsound minecraft:entity.evoker.prepare_attack ambient @a ~ ~ ~ 100 1
title @a[team=1] title {"text":"The seeker is released!","color":"blue"}
schedule function hideseek:timer 1s
execute unless score end End matches 1.. run give @a[team=1] egg[item_name='{"text":"Make the Seeker go away","color":"blue","italic":false}'] 1
execute unless score end End matches 1.. run give @a[team=1] snowball[custom_model_data=1,item_name='{"text":"Budget Ender Pearl","italic":false,"color":"red"}'] 5
execute unless score ataraxia Ataraxia matches 1.. run execute unless score hoa HOA matches 1.. run execute unless score etherea Etherea matches 1.. run schedule function hideseek:reset 600s
execute if score ataraxia Ataraxia matches 1.. run schedule function hideseek:reset 300s
execute if score etherea Etherea matches 1.. run schedule function hideseek:reset 450s
execute if score hoa HOA matches 1.. run schedule function hideseek:reset 450s
execute unless score kaelos Kaelos matches 1.. run execute unless score ataraxia Ataraxia matches 1.. run execute unless score tempus Tempus matches 1.. run execute unless score hoa HOA matches 1.. run schedule function hideseek:border1 300s
function hideseek:ping