# Generic Maps: Bogged
execute unless score end End matches 1.. unless score pavlopetri Pavlopetri matches 1 unless score passtwin Passtwin matches 1 as @e[type=experience_orb,nbt={OnGround:1b}] at @s run summon bogged ~ ~ ~ {Team:"2",Health:30f,CustomName:'{"bold":true,"color":"blue","italic":false,"text":"Gruntling"}',HandItems:[{id:"minecraft:bow",count:1,components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:power":5}}}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{id:"minecraft:iron_chestplate",count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:silence"}}},{id:"minecraft:iron_helmet",count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:silence"}}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],attributes:[{id:"minecraft:generic.max_health",base:30},{id:"minecraft:generic.movement_speed",base:0.8},{id:"minecraft:generic.movement_efficiency",base:1}]}
execute unless score end End matches 1.. unless score pavlopetri Pavlopetri matches 1 unless score passtwin Passtwin matches 1 at @a as @e[type=experience_orb,distance=..5] run summon bogged ~ ~ ~ {Team:"2",Health:30f,CustomName:'{"bold":true,"color":"blue","italic":false,"text":"Gruntling"}',HandItems:[{id:"minecraft:bow",count:1,components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:power":5}}}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{id:"minecraft:iron_chestplate",count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:silence"}}},{id:"minecraft:iron_helmet",count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:silence"}}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],attributes:[{id:"minecraft:generic.max_health",base:30},{id:"minecraft:generic.movement_speed",base:0.8},{id:"minecraft:generic.movement_efficiency",base:1}]}

# The End Minions: Withers
execute if score end End matches 1.. as @e[type=experience_orb,nbt={OnGround:1b}] at @s run summon wither ~ ~ ~ {Team:"2",PersistenceRequired:1b}
execute if score end End matches 1.. at @a as @e[type=experience_orb,distance=..5] run summon wither ~ ~ ~ {Team:"2",PersistenceRequired:1b}

# Pavlopetri Minions: Drowned
# execute if score pavlopetri Pavlopetri matches 1.. as @e[type=experience_orb,nbt={OnGround:1b}] at @s run summon guardian ~ ~ ~ {Team:"2",Tags:["seekerguardian"],Glowing:1b,PersistenceRequired:1b}
# execute if score pavlopetri Pavlopetri matches 1.. at @a as @e[type=experience_orb,distance=..5] run summon guardian ~ ~ ~ {Team:"2",Tags:["seekerguardian"],Glowing:1b,PersistenceRequired:1b}
execute if score pavlopetri Pavlopetri matches 1.. as @e[type=experience_orb,nbt={OnGround:1b}] at @s run summon drowned ~ ~ ~ {CustomName:'{"text":"Drownedling","color":"blue"}',Team:"2",Tags:["seekerguardian"],HandItems:[{id:"minecraft:trident",count:1,components:{unbreakable:{},enchantments:{levels:{impaling:3,channeling:1}}}},{}]}
execute if score pavlopetri Pavlopetri matches 1.. at @a as @e[type=experience_orb,distance=..5] run summon drowned ~ ~ ~ {CustomName:'{"text":"Drownedling","color":"blue"}',Team:"2",Tags:["seekerguardian"],HandItems:[{id:"minecraft:trident",count:1,components:{unbreakable:{},enchantments:{levels:{impaling:3,channeling:1}}}},{}]}

# Passtwin Minions: Phantoms
execute if score passtwin Passtwin matches 1.. as @e[type=experience_orb,nbt={OnGround:1b}] at @s run summon phantom ~ ~ ~ {PersistenceRequired:1b,Team:"2",CustomName:'{"text":"Phantom","color":"blue","italic":false}'}
execute if score passtwin Passtwin matches 1.. at @a as @e[type=experience_orb,distance=..5] run summon phantom ~ ~ ~ {PersistenceRequired:1b,Team:"2",CustomName:'{"text":"Phantom","color":"blue","italic":false}'}

# Sounds
execute as @e[type=experience_orb,nbt={OnGround:1b}] at @s run playsound minecraft:entity.allay.ambient_without_item ambient @a ~ ~ ~ 100 2
execute as @e[type=experience_orb,nbt={OnGround:1b}] at @s run playsound minecraft:entity.evoker.prepare_attack ambient @a ~ ~ ~ 100 1
execute at @a as @e[type=experience_orb,distance=..5] run playsound minecraft:entity.allay.ambient_without_item ambient @a ~ ~ ~ 100 2
execute at @a as @e[type=experience_orb,distance=..5] run playsound minecraft:entity.evoker.prepare_attack ambient @a ~ ~ ~ 100 1

# Kill rogue experience orbs
execute at @a run kill @e[type=experience_orb,distance=..5]
kill @e[type=experience_orb,nbt={OnGround:1b}]