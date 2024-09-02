effect give @p[team=2] speed infinite 3 true
effect give @p[team=2] dolphins_grace infinite 0 true
tp @a[team=2] @e[tag=start, limit=1]
title @a[team=2] title {"text":"It's time to seek!","color":"blue"}
execute at @a run playsound minecraft:entity.ender_dragon.growl ambient @a ~ ~ ~ 100 1
title @a[team=1] title {"text":"The seeker is released!","color":"blue"}
schedule function hideseek:timer 1s
give @a[team=1] egg{display:{Name:'{"text":"Make the Seeker go away","color":"blue","italic":"false"}'}} 2
give @a[team=1] snowball{CustomModelData:1,display:{Name:'{"text":"Budget Ender Pearl","italic":"false","color":"red"}'}} 10
execute unless score ataraxia Ataraxia matches 1.. run execute unless score hoa HOA matches 1.. run schedule function hideseek:reset 600s
execute if score ataraxia Ataraxia matches 1.. run schedule function hideseek:reset 300s
execute if score hoa HOA matches 1.. run schedule function hideseek:reset 450s
execute unless score kaelos Kaelos matches 1.. run execute unless score ataraxia Ataraxia matches 1.. run execute unless score tempus Tempus matches 1.. run execute unless score hoa HOA matches 1.. run schedule function hideseek:border1 300s