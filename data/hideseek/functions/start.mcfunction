team leave @a
gamemode adventure @a
team join 2 @a[sort=random,limit=1]
team join 1 @a[sort=random,team=!2]
effect give @a[team=1] minecraft:invisibility 64 0 true
effect give @a[team=2] minecraft:blindness 64 0 true
give @a[team=2] stick{Enchantments:[{id:sharpness,lvl:15}],Unbreakable:1b,display:{Name:"\"Whacky Stick\"",Lore:["\"Whack them moles\""]}}
give @a[team=1] ender_pearl{Enchantments:[{}],Unbreakable:1b,display:{Lore:['{"text":"Your get out of jail free card","italic":"false","color":"dark_purple"}']}} 1
give @a[team=2] ender_pearl{Enchantments:[{}],Unbreakable:1b,display:{Lore:['{"text":"Go get \'em","italic":"false","color":"dark_purple"}']}} 3
give @a[team=1] chorus_fruit{Enchantments:[{}],Unbreakable:1b,display:{Name:'{"text":"Zoom zoom escape","italic":"false","color":"light_purple"}'}} 1
give @a[team=2] bow{Enchantments:[{id:punch,lvl:2}],Unbreakable:1b}
give @a[team=2] tipped_arrow{Potion:"minecraft:slowness"} 5
tp @a[team=1] @e[tag=start,limit=1]
effect give @a[team=2] minecraft:resistance infinite 255 true
title @a[team=1] actionbar {"text":"You are a hider! Stay hidden from the seeker to win!","color":"red"}
playsound minecraft:ambient.cave ambient @a[team=1] ~ ~ ~ 100 1
title @a[team=2] actionbar {"text":"You are seeking! Find the other players to win!","color":"blue"}
execute as @a[team=1] run scoreboard players add hiders hiding 1
schedule function hideseek:seek 64s
