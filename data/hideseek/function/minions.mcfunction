execute as @e[type=experience_orb,nbt={OnGround:1b}] at @s run summon stray ~ ~ ~ {Team:"2",Health:30f,CustomName:'{"bold":true,"color":"blue","italic":false,"text":"Gruntling"}',HandItems:[{id:"minecraft:bow",count:1,components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:flame":1,"minecraft:power":5}}}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet",count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:trim":{material:"minecraft:diamond",pattern:"minecraft:flow"}}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],attributes:[{id:"minecraft:generic.max_health",base:30},{id:"minecraft:generic.movement_speed",base:0.8},{id:"minecraft:generic.movement_efficiency",base:1}]}
execute as @e[type=experience_orb,nbt={OnGround:1b}] at @s run playsound minecraft:entity.allay.ambient_without_item ambient @a ~ ~ ~ 100 2
execute as @e[type=experience_orb,nbt={OnGround:1b}] at @s run playsound minecraft:entity.evoker.prepare_attack ambient @a ~ ~ ~ 100 1
kill @e[type=experience_orb,nbt={OnGround:1b}]