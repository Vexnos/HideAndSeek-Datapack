team leave @a
gamemode adventure @a
team join 2 @a[sort=random,limit=1]
team join 1 @a[sort=random,team=!2]
effect give @a[team=1] minecraft:invisibility 64 0 true
effect give @a[team=2] minecraft:blindness 64 0 true
give @a[team=2] stick{Enchantments:[{id:sharpness,lvl:15}],Unbreakable:1b,display:{Name:"\"Whacky Stick\"",Lore:["\"Whack them moles\""]}}
give @a[team=1] ender_pearl{Enchantments:[{}],Unbreakable:1b,display:{Lore:['{"text":"Your get out of jail free card","italic":"false","color":"dark_purple"}']}} 1
execute as @a[team=1] run give @a[team=2] ender_pearl{Enchantments:[{}],Unbreakable:1b,display:{Lore:['{"text":"Go get \'em","italic":"false","color":"dark_purple"}']}} 1
give @a[team=1] chorus_fruit{Enchantments:[{}],Unbreakable:1b,display:{Name:'{"text":"Zoom zoom escape","italic":"false","color":"light_purple"}'}} 1
give @a[team=2] bow{Enchantments:[{id:punch,lvl:2}],Unbreakable:1b}
give @a[team=2] tipped_arrow{Potion:"minecraft:slowness"} 5
give @a[team=2] egg{"text":"Budget Ender Pearl","italic":"false","color":"blue"} 3
execute if score ataraxia Ataraxia matches 1.. run give @a[team=1] firework_rocket{Enchantments:[{}],display:{Lore:['{"text":"Use these wisely","color":"yellow","italic":"false","bold":"true"}']}} 2
execute if score hoa HOA matches 1.. run give @a[team=1] firework_rocket{Enchantments:[{}],display:{Lore:['{"text":"Use these wisely","color":"yellow","italic":"false","bold":"true"}']}} 3
execute if score ataraxia Ataraxia matches 1.. run execute as @a[team=1] run give @a[team=2] firework_rocket{Enchantments:[{}],display:{Lore:['{"text":"Take them out","color":"yellow","italic":"false","bold":"true"}']}} 3
execute if score hoa HOA matches 1.. run execute as @a[team=1] run give @a[team=2] firework_rocket{Enchantments:[{}],display:{Lore:['{"text":"Take them out","color":"yellow","italic":"false","bold":"true"}']}} 4
execute if score ataraxia Ataraxia matches 1.. run give @a elytra{Enchantments:[{}],Unbreakable:1b}
execute if score hoa HOA matches 1.. run give @a elytra{Enchantments:[{}],Unbreakable:1b}
execute if score hoa HOA matches 1.. run give @a[team=1] trident{Damage:248,Enchantments:[{id:unbreaking,lvl:4s},{id:riptide,lvl:4s}]}
execute if score hoa HOA matches 1.. run give @a[team=2] trident{Enchantments:[{id:riptide,lvl:4s}],Unbreakable:1b}
execute if score end End matches 1.. run give @a[team=1] firework_rocket{Enchantments:[{}]} 20
execute if score end End matches 1.. run give @a[team=2] crossbow{Unbreakable:1b,Enchantments:[{id:quick_charge,lvl:5},{id:piercing,lvl:5},{id:multishot,lvl:1}],display:{Name:'{"text":"SPANKR","color":"red","bold":"true","italic":"false"}'}}
execute if score end End matches 1.. run execute as @a[team=1] run give @a[team=2] firework_rocket{Fireworks:{Flight:3b,Explosions:[{Type:4,Trail:1b,Colors:[I;16772608]},{Type:4,Trail:1b,Colors:[I;16746496]},{Type:4,Trail:1b,Colors:[I;16711680]},{Type:4,Trail:1b,Colors:[I;16737894]},{Type:4,Trail:1b,Colors:[I;16772608]},{Type:4,Trail:1b,Colors:[I;16768256]},{Type:4,Trail:1b,Colors:[I;16746496]},{Type:4,Trail:1b,Colors:[I;16772608]},{Type:4,Trail:1b,Colors:[I;16740096]}]}} 96
execute if score end End matches 1.. run give @a elytra{Enchantments:[{}],Unbreakable:1b}
tp @a[team=1] @e[tag=start,limit=1]
effect give @a[team=2] minecraft:resistance infinite 255 true
title @a[team=1] actionbar {"text":"You are a hider! Stay hidden from the seeker to win!","color":"red"}
playsound minecraft:ambient.cave ambient @a[team=1] ~ ~ ~ 100 1
title @a[team=2] actionbar {"text":"You are seeking! Find the other players to win!","color":"blue"}
execute as @a[team=1] run scoreboard players add hiders hiding 1
give @a[team=1] snowball{CustomModelData:1,display:{Name:'{"text":"Budget Ender Pearl","italic":"false","color":"red"}'}} 10
schedule function hideseek:seek 64s
