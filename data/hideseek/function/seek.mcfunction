# Items for Seekers
give @a[team=2] stick[enchantments={levels:{sharpness:15}},unbreakable={},item_name='{"text":"Whacky Stick","color":"aqua"}',lore=['{"text":"Whack them moles","color":"dark_aqua","italic":false}']]
# execute as @a[team=1] run give @a[team=2] ender_pearl[enchantment_glint_override=true,unbreakable={},lore=['{"text":"Go get \'em","italic":false,"color":"dark_purple"}'],item_name='{"text":"Ender Pearl","color":"light_purple"}'] 1
# give @a[team=2] skeleton_skull[item_name='{"color":"green","italic":false,"text":"Minions Power Up"}',food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:0.1},enchantment_glint_override=true] 3
give @a[team=2] bow[enchantments={levels:{punch:2}},unbreakable={}]
item replace entity @a[team=2] inventory.1 with bell[item_name='{"color":"dark_red","italic":false,"text":"Force Taunt"}',food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:0.1},enchantment_glint_override=true] 3
# give @a[team=2] chain[item_name='{"color":"blue","italic":false,"text":"Grapple"}',food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:0.1},enchantment_glint_override=true] 3
item replace entity @a[team=2] inventory.0 with tipped_arrow[potion_contents={potion:"minecraft:slowness"}] 15
execute if score minionsEnabled minionsEnabled matches 1.. run give @a[team=2] experience_bottle[custom_name='{"text":"Minions","color":"green","italic":false}'] 3
give @a[team=2] mace[enchantments={levels:{breach:10,density:10,wind_burst:10}},unbreakable={}] 1
# execute unless score end End matches 1.. run execute as @a[team=1] run give @a[team=2] egg[item_name='{"text":"Budget Ender Pearl","italic":false,"color":"blue"}'] 10
give @a[team=2] heavy_core[custom_name='{"text":"Destroy Eggs","color":"red","italic":false}',food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:0.1},enchantment_glint_override=true]
execute if score ataraxia Ataraxia matches 1.. run execute as @a[team=1] run give @a[team=2] firework_rocket[enchantment_glint_override=true,lore=['{"text":"Take them out","color":"yellow","italic":false,"bold":true}']] 3
execute if score hoa HOA matches 1.. run execute as @a[team=1] run give @a[team=2] firework_rocket[enchantment_glint_override=true,lore=['{"text":"Take them out","color":"yellow","italic":false,"bold":true}']] 4
execute if score hoa HOA matches 1.. run give @a[team=2] trident[enchantments={levels:{riptide:4}},unbreakable={}]
execute if score end End matches 1.. run give @a[team=2] crossbow[unbreakable={},enchantments={levels:{piercing:5,multishot:1,quick_charge:5}},item_name='{"text":"SPANKR","color":"red","bold":true,"italic":false}']
execute if score end End matches 1.. run execute as @a[team=1] run give @a[team=2] firework_rocket[fireworks={flight_duration:3,explosions:[{shape:"large_ball",colors:[I;16761600]},{shape:"large_ball",colors:[I;16747528]},{shape:"burst",colors:[I;16770688]},{shape:"large_ball",colors:[I;16766251]},{shape:"burst",colors:[I;16768786]},{shape:"small_ball",colors:[I;16749622]},{shape:"small_ball",colors:[I;16763968]},{shape:"star",colors:[I;16764723]},{shape:"large_ball",colors:[I;16755717]}]}] 96

tag @a[team=2] remove seekerWait
effect give @a[team=2] speed infinite 3 true
effect give @a[team=2] dolphins_grace infinite 0 true
effect give @a[team=2] fire_resistance infinite 0 true
tp @a[team=2] @e[tag=start, limit=1]
title @a[team=2] title {"text":"It's time to seek!","color":"blue"}
execute at @a run playsound minecraft:entity.ender_dragon.growl ambient @a ~ ~ ~ 100 1
execute at @a run playsound minecraft:entity.evoker.prepare_attack ambient @a ~ ~ ~ 100 1
title @a[team=1] title {"text":"The seeker is released!","color":"blue"}
# give @a[team=2] fishing_rod[unbreakable={},enchantment_glint_override=true,rarity=epic,custom_name='{"text":"Grappling Hook","italic":false}']
schedule function hideseek:timer 1s
execute unless score end End matches 1.. run give @a[team=1] egg[item_name='{"text":"Make the Seeker go away","color":"blue","italic":false}'] 1
execute unless score ataraxia Ataraxia matches 1.. run execute unless score hoa HOA matches 1.. run schedule function hideseek:reset 600s
execute if score ataraxia Ataraxia matches 1.. run schedule function hideseek:reset 300s
execute if score hoa HOA matches 1.. run schedule function hideseek:reset 450s
execute unless score #eventsEnabled eventsEnabled matches 0 unless score ataraxia Ataraxia matches 1 unless score hoa HOA matches 1 run schedule function events:initmevent 150s
execute unless score #eventsEnabled eventsEnabled matches 0 unless score ataraxia Ataraxia matches 1 unless score hoa HOA matches 1 run schedule function events:initevent 60s
execute unless score kaelos Kaelos matches 1.. run execute unless score ataraxia Ataraxia matches 1.. run execute unless score tempus Tempus matches 1.. run execute unless score hoa HOA matches 1.. run schedule function hideseek:border1 300s
execute if score mobsEnabled mobsEnabled matches 1.. run execute unless score end End matches 1.. unless score hoa HOA matches 1.. unless score ataraxia Ataraxia matches 1.. run schedule function hideseek:finalminute 540s
function hideseek:ping
effect clear @a[team=2] blindness
effect clear @a[team=1] invisibility
schedule clear hideseek:seek