team leave @a
gamemode adventure @a
team join 2 @a[sort=random,limit=1]
team join 1 @a[sort=random,team=!2]
effect give @a[team=1] minecraft:invisibility 64 0 true
effect give @a[team=2] minecraft:blindness 64 0 true
give @a[team=2] stick[enchantments={levels:{sharpness:15}},unbreakable={},item_name='{"text":"Whacky Stick","color":"aqua"}',lore=['{"text":"Whack them moles","color":"dark_aqua","italic":false}']]
give @a[team=1] ender_pearl[enchantment_glint_override=true,unbreakable={},lore=['{"text":"Your get out of jail free card","italic":false,"color":"dark_purple"}'],item_name='{"text":"Ender Pearl","color":"light_purple"}'] 1
execute as @a[team=1] run give @a[team=2] ender_pearl[enchantment_glint_override=true,unbreakable={},lore=['{"text":"Go get \'em","italic":false,"color":"dark_purple"}'],item_name='{"text":"Ender Pearl","color":"light_purple"}'] 1
give @a[team=1] chorus_fruit[enchantment_glint_override=true,unbreakable={},item_name='{"text":"Zoom zoom escape","italic":false,"color":"light_purple"}'] 1
give @a[team=2] bow[enchantments={levels:{punch:2}},unbreakable={}]
give @a[team=2] tipped_arrow[potion_contents={potion:"minecraft:slowness"}] 15
give @a wind_charge 10
give @a[team=2] mace[enchantments={levels:{breach:10,density:10,fire_aspect:10,wind_burst:10}},unbreakable={}] 1
execute unless score end End matches 1.. run execute as @a[team=1] run give @a[team=2] egg[item_name='{"text":"Budget Ender Pearl","italic":false,"color":"blue"}'] 4
execute if score ataraxia Ataraxia matches 1.. run give @a[team=1] firework_rocket[enchantment_glint_override=true,lore=['{"text":"Use these wisely","color":"yellow","italic":false,"bold":true}']] 2
execute if score hoa HOA matches 1.. run give @a[team=1] firework_rocket[enchantment_glint_override=true,lore=['{"text":"Use these wisely","color":"yellow","italic":false,"bold":true}']] 3
execute if score ataraxia Ataraxia matches 1.. run execute as @a[team=1] run give @a[team=2] firework_rocket[enchantment_glint_override=true,lore=['{"text":"Take them out","color":"yellow","italic":false,"bold":true}']] 3
execute if score hoa HOA matches 1.. run execute as @a[team=1] run give @a[team=2] firework_rocket[enchantment_glint_override=true,lore=['{"text":"Take them out","color":"yellow","italic":false,"bold":true}']] 4
execute if score ataraxia Ataraxia matches 1.. run give @a elytra[enchantment_glint_override=true,unbreakable={}]
execute if score hoa HOA matches 1.. run give @a elytra[enchantment_glint_override=true,unbreakable={}]
execute if score hoa HOA matches 1.. run give @a[team=1] trident[damage=248,enchantments={levels:{unbreaking:4,riptide:4}}]
execute if score hoa HOA matches 1.. run give @a[team=2] trident[enchantments={levels:{riptide:4}},unbreakable={}]
execute if score end End matches 1.. run give @a[team=1] firework_rocket[enchantment_glint_override=true] 20
execute if score end End matches 1.. run give @a[team=2] crossbow[unbreakable={},enchantments={levels:{piercing:5,multishot:1,quick_charge:5}},item_name='{"text":"SPANKR","color":"red","bold":true,"italic":false}']
execute if score end End matches 1.. run execute as @a[team=1] run give @a[team=2] firework_rocket[fireworks={flight_duration:3,explosions:[{shape:"large_ball",colors:[I;16761600]},{shape:"large_ball",colors:[I;16747528]},{shape:"burst",colors:[I;16770688]},{shape:"large_ball",colors:[I;16766251]},{shape:"burst",colors:[I;16768786]},{shape:"small_ball",colors:[I;16749622]},{shape:"small_ball",colors:[I;16763968]},{shape:"star",colors:[I;16764723]},{shape:"large_ball",colors:[I;16755717]}]}] 96
execute if score end End matches 1.. run give @a elytra[enchantment_glint_override=true,unbreakable={}]
tp @a[team=1] @e[tag=start,limit=1]
effect give @a[team=2] minecraft:resistance infinite 255 true
title @a[team=1] actionbar {"text":"You are a hider! Stay hidden from the seeker to win!","color":"red"}
playsound minecraft:ambient.cave ambient @a[team=1] ~ ~ ~ 100 1
title @a[team=2] actionbar {"text":"You are seeking! Find the other players to win!","color":"blue"}
execute as @a[team=1] run scoreboard players add hiders hiding 1
schedule function hideseek:seek 64s