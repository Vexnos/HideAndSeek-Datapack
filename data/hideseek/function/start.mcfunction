# Teams and Game Start
scoreboard players reset @a deaths
team leave @a
clear @a
gamemode adventure @a
scoreboard players set swap swap 0
function hideseek:seekers
team join 1 @a[sort=random,team=!2]
execute as @a[team=1] run scoreboard players add hiders hiding 1
execute as @a[team=1] run scoreboard players add swap swap 1
tag @a[team=2] add seekerWait
tag @a remove notswap
tag @a remove last_seeker

# Teleportation
tp @a[team=1] @e[tag=start,limit=1]

# Effects
effect give @a[team=1] minecraft:invisibility 64 0 true
effect give @a[team=2] minecraft:blindness 64 0 true
execute unless score darkpeak DarkPeak matches 1 unless score pavlopetri Pavlopetri matches 1 unless score antinazgard Antinazgard matches 1 unless score antiend Antiend matches 1 unless score hailstorm Hailstorm matches 1 unless score paleora Paleora matches 1 run effect give @a[team=2] minecraft:resistance infinite 255 true

# Pavlopetri Effects
execute if score pavlopetri Pavlopetri matches 1 run effect give @a water_breathing infinite 0 true
execute if score pavlopetri Pavlopetri matches 1 run effect give @a[team=1] dolphins_grace infinite 0 true
execute if score pavlopetri Pavlopetri matches 1 run effect give @a[team=2] dolphins_grace infinite 1 true

# Items for Hiders
execute unless score pavlopetri Pavlopetri matches 1 unless score cathedral Cathedral matches 1 run give @a[team=1] ender_pearl[enchantment_glint_override=true,unbreakable={},lore=[{"text":"Your get out of jail free card","italic":false,"color":"dark_purple"}],item_name={"text":"Ender Pearl","color":"light_purple"}] 1
execute if score cathedral Cathedral matches 1 run give @a[team=1] ender_pearl[enchantment_glint_override=true,unbreakable={},lore=[{"text":"Your get out of jail free card","italic":false,"color":"dark_purple"}],item_name={"text":"Ender Pearl","color":"light_purple"}] 2
execute unless score end End matches 1.. unless score pavlopetri Pavlopetri matches 1 unless score antinazgard Antinazgard matches 1 unless score passtwin Passtwin matches 1 unless score hindenburg Hindenburg matches 1 run give @a[team=1] snowball[custom_model_data={floats:[1]},item_name={"text":"Budget Ender Pearl","italic":false,"color":"red"}] 6
execute unless score pavlopetri Pavlopetri matches 1 unless score hindenburg Hindenburg matches 1 run give @a[team=1] chorus_fruit[enchantment_glint_override=true,unbreakable={},item_name={"text":"Zoom zoom escape","italic":false,"color":"light_purple"}] 2
# give @a[team=1] potion[custom_name='{"italic":false,"text":"Potion of Fire Resistance"}',potion_contents={custom_color:16746496,custom_effects:[{id:"minecraft:fire_resistance",amplifier:0,duration:400,show_particles:1b,show_icon:1b}]}] 1
execute unless score pavlopetri Pavlopetri matches 1 run give @a[team=1] magma_cream[item_name={"color":"gold","italic":false,"text":"Fire Resistance Power Up"},consumable={consume_seconds:0.05,on_consume_effects:[{type:apply_effects,effects:[{id:"minecraft:fire_resistance",amplifier:0,duration:400,show_particles:0b,show_icon:1b}],probability:1}]},enchantment_glint_override=true] 1
execute unless score pavlopetri Pavlopetri matches 1 run give @a[team=1] slime_ball[item_name={"color":"green","italic":false,"text":"Super Jump Power Up"},consumable={consume_seconds:0.05,on_consume_effects:[{type:apply_effects,effects:[{id:"minecraft:levitation",amplifier:100,duration:5,show_particles:0b,show_icon:1b}],probability:1}]},enchantment_glint_override=true] 1
# give @a[team=1] potion[potion_contents={custom_color:16775126,custom_effects:[{id:"minecraft:invisibility",amplifier:0,duration:400,show_particles:0b,show_icon:1b}]},item_name='{"text":"Potion of Invisibility","italic":false}'] 1
execute unless score pavlopetri Pavlopetri matches 1 run give @a[team=1] feather[item_name={"color":"yellow","italic":false,"text":"Invisibility Power Up"},consumable={consume_seconds:0.05,on_consume_effects:[{type:apply_effects,effects:[{id:"minecraft:invisibility",amplifier:0,duration:300,show_particles:0b,show_icon:1b}],probability:1}]},enchantment_glint_override=true] 1
# execute unless score end End matches 1 unless score ataraxia Ataraxia matches 1 unless score pavlopetri Pavlopetri matches 1 unless score antinazgard Antinazgard matches 1 unless score passtwin Passtwin matches 1 run give @a[team=1] wind_charge 1
item replace entity @a inventory.9 with wind_charge 32
execute unless score pavlopetri Pavlopetri matches 1 unless score hindenburg Hindenburg matches 1 run give @a[team=1] crossbow[max_damage=1,custom_name={"color":"gold","italic":false,"text":"Legolas' Shot"},damage=1,enchantments={"minecraft:quick_charge":5},charged_projectiles=[{id:"minecraft:spectral_arrow",count:1,components:{"minecraft:intangible_projectile":{}}}]] 1
execute if score ataraxia Ataraxia matches 1.. run give @a[team=1] firework_rocket[enchantment_glint_override=true,lore=[{"text":"Use these wisely","color":"yellow","italic":false,"bold":true}]] 2
execute if score hoa HOA matches 1.. run give @a[team=1] firework_rocket[enchantment_glint_override=true,lore=[{"text":"Use these wisely","color":"yellow","italic":false,"bold":true}]] 3
execute if score hoa HOA matches 1.. run give @a[team=1] trident[damage=248,enchantments={unbreaking:4,riptide:4}]
execute if score end End matches 1.. run give @a[team=1] firework_rocket[enchantment_glint_override=true] 20
execute if score venator Venator matches 1.. run give @a[team=1] firework_rocket[enchantment_glint_override=true] 20
execute if score passtwin Passtwin matches 1.. run give @a[team=1] firework_rocket[enchantment_glint_override=true] 20
execute if score cathedral Cathedral matches 1.. run give @a[team=1] firework_rocket[enchantment_glint_override=true] 10
execute if score antinazgard Antinazgard matches 1.. run give @a[team=1] firework_rocket[enchantment_glint_override=true] 20
execute if score hindenburg Hindenburg matches 1.. run give @a[team=1] fishing_rod[max_damage=3,enchantment_glint_override=true,custom_name={"text":"Grappling Hook","italic":false}]
give @a[team=1] amethyst_shard[custom_name={text:"Shadowclone",italic:false,color:"yellow"},enchantment_glint_override=true,max_stack_size=3,consumable={animation:crossbow,consume_seconds:0.05,has_consume_particles:false}] 3

# Pavlopetri Specific Items
execute if score pavlopetri Pavlopetri matches 1 run give @a[team=1] ink_sac[consumable={consume_seconds:0.05},enchantment_glint_override=true,custom_name={"text":"Ink Bomb","italic":false,"color":"black"}] 3
execute if score pavlopetri Pavlopetri matches 1 run give @a[team=1] trident[max_damage=8,enchantments={riptide:3},custom_name={"text":"Booster","italic":false}]
execute if score pavlopetri Pavlopetri matches 1 run give @a[team=1] heart_of_the_sea[item_name={"color":"aqua","italic":false,"text":"Night Vision"},consumable={consume_seconds:0.05,on_consume_effects:[{type:apply_effects,effects:[{id:"minecraft:night_vision",amplifier:0,duration:200,show_particles:0b,show_icon:1b}],probability:1}]},enchantment_glint_override=true] 3

# Universal Items
execute if score ataraxia Ataraxia matches 1.. run item replace entity @a armor.chest with elytra[enchantment_glint_override=true,unbreakable={}]
execute if score cathedral Cathedral matches 1.. run item replace entity @a armor.chest with elytra[enchantment_glint_override=true,unbreakable={}]
execute if score venator Venator matches 1.. run item replace entity @a armor.chest with elytra[enchantment_glint_override=true,unbreakable={}]
execute if score passtwin Passtwin matches 1.. run item replace entity @a armor.chest with elytra[enchantment_glint_override=true,unbreakable={}]
execute if score hoa HOA matches 1.. run item replace entity @a armor.chest with elytra[enchantment_glint_override=true,unbreakable={}]
execute if score end End matches 1.. run item replace entity @a armor.chest with elytra[enchantment_glint_override=true,unbreakable={}]
execute if score antinazgard Antinazgard matches 1.. run item replace entity @a armor.chest with elytra[enchantment_glint_override=true,unbreakable={}]

# Titles and Tellraws
title @a[team=1] actionbar {"text":"You are a hider! Stay hidden from the seeker to win!","color":"red"}
title @a[team=2] actionbar {"text":"You are seeking! Find the other players to win!","color":"blue"}

# Sounds
playsound minecraft:ambient.cave ambient @a[team=1] ~ ~ ~ 100 1

# Spawnpoint
execute at @e[tag=start,limit=1] run spawnpoint @a[team=2] ~ ~ ~

# Bossbar
bossbar set hidingtimer players @a
bossbar set hidingtimer visible true
bossbar set timer visible false
bossbar set hidingtimer value 64

# Enable Glowing on Hindenburg
execute if score hindenburg Hindenburg matches 1 run scoreboard players set glowingEnabled glowingEnabled 1
execute unless score hindenburg Hindenburg matches 1 run scoreboard players set glowingEnabled glowingEnabled 0

# Spread Players
execute if score #spread spreadPlayers matches 1 as @a[team=1] at @e[tag=start,limit=1] run spreadplayers ~ ~ 75 100 true @s

# Get UUIDS
execute as @a store result score @s uuid0 run data get entity @s UUID[0]
execute as @a store result score @s uuid1 run data get entity @s UUID[1]
execute as @a store result score @s uuid2 run data get entity @s UUID[2]
execute as @a store result score @s uuid3 run data get entity @s UUID[3]

# Set the game as running
scoreboard players set #game gameRunning 1
scoreboard players set #trackStats trackStats 0
function hideseek:hidingtimer
schedule function hideseek:seek 64s

# OST
# execute as @a at @s run playsound hideseek:jokers record @s