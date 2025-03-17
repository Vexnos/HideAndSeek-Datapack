# Teams and Game Start
team leave @a
clear @a
gamemode adventure @a
scoreboard players set swap swap 0
execute if score seekerAmount seekerAmount matches 1 run team join 2 @a[sort=random,limit=1]
execute if score seekerAmount seekerAmount matches 2 run team join 2 @a[sort=random,limit=2]
execute if score seekerAmount seekerAmount matches 3 run team join 2 @a[sort=random,limit=3]
execute if score seekerAmount seekerAmount matches 4 run team join 2 @a[sort=random,limit=4]
team join 1 @a[sort=random,team=!2]
execute as @a[team=1] run scoreboard players add hiders hiding 1
execute as @a[team=1] run scoreboard players add swap swap 1
tag @a[team=2] add seekerWait
tag @a remove notswap

# Teleportation
tp @a[team=1] @e[tag=start,limit=1]

# Effects
effect give @a[team=1] minecraft:invisibility 64 0 true
effect give @a[team=2] minecraft:blindness 64 0 true
execute unless score darkpeak DarkPeak matches 1 unless score pavlopetri Pavlopetri matches 1 run effect give @a[team=2] minecraft:resistance infinite 255 true

# Pavlopetri Effects
execute if score pavlopetri Pavlopetri matches 1 run effect give @a[team=1] water_breathing infinite 0 true
execute if score pavlopetri Pavlopetri matches 1 run effect give @a[team=1] dolphins_grace infinite 0 true
execute if score pavlopetri Pavlopetri matches 1 run effect give @a[team=2] water_breathing infinite 0 true
execute if score pavlopetri Pavlopetri matches 1 run effect give @a[team=2] dolphins_grace infinite 1 true

# Items for Hiders
execute unless score pavlopetri Pavlopetri matches 1 run give @a[team=1] ender_pearl[enchantment_glint_override=true,unbreakable={},lore=['{"text":"Your get out of jail free card","italic":false,"color":"dark_purple"}'],item_name='{"text":"Ender Pearl","color":"light_purple"}'] 1
execute unless score end End matches 1.. unless score pavlopetri Pavlopetri matches 1 unless score antinazgard Antinazgard matches 1 run give @a[team=1] snowball[custom_model_data=1,item_name='{"text":"Budget Ender Pearl","italic":false,"color":"red"}'] 6
execute unless score pavlopetri Pavlopetri matches 1 run give @a[team=1] chorus_fruit[enchantment_glint_override=true,unbreakable={},item_name='{"text":"Zoom zoom escape","italic":false,"color":"light_purple"}'] 1
# give @a[team=1] potion[custom_name='{"italic":false,"text":"Potion of Fire Resistance"}',potion_contents={custom_color:16746496,custom_effects:[{id:"minecraft:fire_resistance",amplifier:0,duration:400,show_particles:1b,show_icon:1b}]}] 1
execute unless score pavlopetri Pavlopetri matches 1 run give @a[team=1] magma_cream[item_name='{"color":"gold","italic":false,"text":"Fire Resistance Power Up"}',food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:0.05,effects:[{effect:{id:"minecraft:fire_resistance",amplifier:0,duration:400,show_particles:0b,show_icon:1b},probability:1}]},enchantment_glint_override=true] 1
execute unless score pavlopetri Pavlopetri matches 1 run give @a[team=1] slime_ball[item_name='{"color":"green","italic":false,"text":"Super Jump Power Up"}',food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:0.05,effects:[{effect:{id:"minecraft:levitation",amplifier:100,duration:5,show_particles:0b,show_icon:1b},probability:1}]},enchantment_glint_override=true] 1
# give @a[team=1] potion[potion_contents={custom_color:16775126,custom_effects:[{id:"minecraft:invisibility",amplifier:0,duration:400,show_particles:0b,show_icon:1b}]},item_name='{"text":"Potion of Invisibility","italic":false}'] 1
execute unless score pavlopetri Pavlopetri matches 1 run give @a[team=1] golden_carrot[item_name='{"color":"yellow","italic":false,"text":"Invisibility Power Up"}',food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:0.05,effects:[{effect:{id:"minecraft:invisibility",amplifier:0,duration:300,show_particles:0b,show_icon:1b},probability:1}]},enchantment_glint_override=true] 1
execute unless score end End matches 1 unless score ataraxia Ataraxia matches 1 unless score pavlopetri Pavlopetri matches 1 unless score antinazgard Antinazgard matches 1 run give @a[team=1] wind_charge 1
execute unless score pavlopetri Pavlopetri matches 1 run give @a[team=1] crossbow[max_damage=1,damage=1,custom_name='{"text":"Legolas\' Shot","italic":false,"color":"gold"}',enchantments={levels:{quick_charge:5}}]
execute unless score pavlopetri Pavlopetri matches 1 run give @a[team=1] spectral_arrow[enchantment_glint_override=true]
execute if score ataraxia Ataraxia matches 1.. run give @a[team=1] firework_rocket[enchantment_glint_override=true,lore=['{"text":"Use these wisely","color":"yellow","italic":false,"bold":true}']] 2
execute if score hoa HOA matches 1.. run give @a[team=1] firework_rocket[enchantment_glint_override=true,lore=['{"text":"Use these wisely","color":"yellow","italic":false,"bold":true}']] 3
execute if score hoa HOA matches 1.. run give @a[team=1] trident[damage=248,enchantments={levels:{unbreaking:4,riptide:4}}]
execute if score end End matches 1.. run give @a[team=1] firework_rocket[enchantment_glint_override=true] 20
execute if score antinazgard Antinazgard matches 1.. run give @a[team=1] firework_rocket[enchantment_glint_override=true] 20
execute if score hindenburg Hindenburg matches 1.. run give @a[team=1] fishing_rod[enchantment_glint_override=true,custom_name='{"text":"Grappling Hook","italic":false}']

# Pavlopetri Specific Items
execute if score pavlopetri Pavlopetri matches 1 run give @a[team=1] ink_sac[food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:0.05},enchantment_glint_override=true,custom_name='{"text":"Ink Bomb","italic":false,"color":"black"}'] 3
execute if score pavlopetri Pavlopetri matches 1 run give @a[team=1] trident[max_damage=8,enchantments={levels:{riptide:3}},custom_name='{"text":"Booster","italic":false}']
execute if score pavlopetri Pavlopetri matches 1 run give @a[team=1] heart_of_the_sea[item_name='{"color":"aqua","italic":false,"text":"Night Vision"}',food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:0.05,effects:[{effect:{id:"minecraft:night_vision",amplifier:0,duration:200,show_particles:0b,show_icon:1b},probability:1}]},enchantment_glint_override=true] 3

# Universal Items
execute if score ataraxia Ataraxia matches 1.. run give @a elytra[enchantment_glint_override=true,unbreakable={}]
execute if score hoa HOA matches 1.. run give @a elytra[enchantment_glint_override=true,unbreakable={}]
execute if score end End matches 1.. run give @a elytra[enchantment_glint_override=true,unbreakable={}]
execute if score antinazgard Antinazgard matches 1.. run give @a elytra[enchantment_glint_override=true,unbreakable={}]

# Titles and Tellraws
title @a[team=1] actionbar {"text":"You are a hider! Stay hidden from the seeker to win!","color":"red"}
title @a[team=2] actionbar {"text":"You are seeking! Find the other players to win!","color":"blue"}

# Sounds
playsound minecraft:ambient.cave ambient @a[team=1] ~ ~ ~ 100 1

# Goat Horns
execute as @a[name=Vexnos,team=1] run give @s goat_horn[instrument=ponder_goat_horn]
execute as @a[name=Atomhix,team=1] run give @s goat_horn[instrument=sing_goat_horn]
execute as @a[name=Mathmagician8191,team=1] run give @s goat_horn[instrument=seek_goat_horn]
execute as @a[name=qqqqqwwwww009,team=1] run give @s goat_horn[instrument=call_goat_horn]
execute as @a[name=mR_P0tat012,team=1] run give @s goat_horn[instrument=dream_goat_horn]
give @a[name=!Vexnos,name=!Mathmagician8191,name=!Atomhix,name=!qqqqqwwwww009,name=!mR_P0tat012,team=1] goat_horn[instrument=yearn_goat_horn]

# Spawnpoint
execute at @e[tag=start,limit=1] run spawnpoint @a[team=2] ~ ~ ~

# Bossbar
bossbar set hidingtimer players @a
bossbar set hidingtimer visible true
bossbar set timer visible false
bossbar set hidingtimer value 64

# Spread Players
execute if score #spread spreadPlayers matches 1 as @a[team=1] at @e[tag=start,limit=1] run spreadplayers ~ ~ 75 100 true @s

# Set the game as running
scoreboard players set #game gameRunning 1
function hideseek:hidingtimer
schedule function hideseek:seek 64s

# OST
execute as @a at @s run playsound hideseek:jokers record @a