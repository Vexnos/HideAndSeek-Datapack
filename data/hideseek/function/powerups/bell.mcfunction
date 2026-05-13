# Revoke advancement so the function doesn't run repeatedly
advancement revoke @s only hideseek:powerups/bell

# Sounds
execute at @s run playsound minecraft:block.bell.resonate master @a ~ ~ ~ 100 2
execute at @a[team=1] run playsound minecraft:entity.ghast.scream master @a ~ ~ ~ 100 1

# Effects
effect give @a[team=1,gamemode=adventure] glowing 1 0 false
effect give @s glowing 10 0 true
effect give @s blindness 5 0 true

# Lightning
execute at @a[team=1,tag=!out] run summon lightning_bolt ~ ~ ~

# Silverfish
execute unless score end map matches 1 at @s run summon silverfish ~ ~ ~ {Team:"1",Glowing:0b,HasVisualFire:1b,CustomName:'{"text":"Jerry","color":"red"}',attributes:[{id:"minecraft:movement_speed",modifiers:[{amount:2,id:"movement_speed",operation:add_value}]}],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:false}]}
execute unless score end map matches 1 at @s run summon silverfish ~ ~ ~ {Team:"1",Glowing:0b,HasVisualFire:1b,CustomName:'{"text":"Jerry","color":"red"}',attributes:[{id:"minecraft:movement_speed",modifiers:[{amount:2,id:"movement_speed",operation:add_value}]}],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:false}]}
execute unless score end map matches 1 at @s run summon silverfish ~ ~ ~ {Team:"1",Glowing:0b,HasVisualFire:1b,CustomName:'{"text":"Jerry","color":"red"}',attributes:[{id:"minecraft:movement_speed",modifiers:[{amount:2,id:"movement_speed",operation:add_value}]}],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:false}]}
execute unless score end map matches 1 at @s run summon silverfish ~ ~ ~ {Team:"1",Glowing:0b,HasVisualFire:1b,CustomName:'{"text":"Jerry","color":"red"}',attributes:[{id:"minecraft:movement_speed",modifiers:[{amount:2,id:"movement_speed",operation:add_value}]}],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:false}]}
execute unless score end map matches 1 at @s run summon silverfish ~ ~ ~ {Team:"1",Glowing:0b,HasVisualFire:1b,CustomName:'{"text":"Jerry","color":"red"}',attributes:[{id:"minecraft:movement_speed",modifiers:[{amount:2,id:"movement_speed",operation:add_value}]}],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:false}]}
execute unless score end map matches 1 at @s run summon silverfish ~ ~ ~ {Team:"1",Glowing:0b,HasVisualFire:1b,CustomName:'{"text":"Jerry","color":"red"}',attributes:[{id:"minecraft:movement_speed",modifiers:[{amount:2,id:"movement_speed",operation:add_value}]}],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:false}]}
execute unless score end map matches 1 at @s run summon silverfish ~ ~ ~ {Team:"1",Glowing:0b,HasVisualFire:1b,CustomName:'{"text":"Jerry","color":"red"}',attributes:[{id:"minecraft:movement_speed",modifiers:[{amount:2,id:"movement_speed",operation:add_value}]}],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:false}]}
execute if score end map matches 1 at @s run summon vex ~ ~ ~ {Team:"1",Glowing:1b,HasVisualFire:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:false}],CustomName:'{"text":"Jerry","color":"red"}',CustomNameVisible:false}
execute if score end map matches 1 at @s run summon vex ~ ~ ~ {Team:"1",Glowing:1b,HasVisualFire:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:false}],CustomName:'{"text":"Jerry","color":"red"}',CustomNameVisible:false}
execute if score end map matches 1 at @s run summon vex ~ ~ ~ {Team:"1",Glowing:1b,HasVisualFire:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:false}],CustomName:'{"text":"Jerry","color":"red"}',CustomNameVisible:false}
execute if score end map matches 1 at @s run summon vex ~ ~ ~ {Team:"1",Glowing:1b,HasVisualFire:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:false}],CustomName:'{"text":"Jerry","color":"red"}',CustomNameVisible:false}
execute if score end map matches 1 at @s run summon vex ~ ~ ~ {Team:"1",Glowing:1b,HasVisualFire:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:false}],CustomName:'{"text":"Jerry","color":"red"}',CustomNameVisible:false}
execute if score end map matches 1 at @s run summon vex ~ ~ ~ {Team:"1",Glowing:1b,HasVisualFire:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:false}],CustomName:'{"text":"Jerry","color":"red"}',CustomNameVisible:false}
execute if score end map matches 1 at @s run summon vex ~ ~ ~ {Team:"1",Glowing:1b,HasVisualFire:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:false}],CustomName:'{"text":"Jerry","color":"red"}',CustomNameVisible:false}
execute if score end map matches 1 at @s run summon vex ~ ~ ~ {Team:"1",Glowing:1b,HasVisualFire:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:false}],CustomName:'{"text":"Jerry","color":"red"}',CustomNameVisible:false}
execute if score antiNazgard map matches 1 at @s run summon vex ~ ~ ~ {Team:"1",Glowing:1b,HasVisualFire:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:false}],CustomName:'{"text":"Jerry","color":"red"}',CustomNameVisible:false}
execute if score antiNazgard map matches 1 at @s run summon vex ~ ~ ~ {Team:"1",Glowing:1b,HasVisualFire:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:false}],CustomName:'{"text":"Jerry","color":"red"}',CustomNameVisible:false}
execute if score antiNazgard map matches 1 at @s run summon vex ~ ~ ~ {Team:"1",Glowing:1b,HasVisualFire:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:false}],CustomName:'{"text":"Jerry","color":"red"}',CustomNameVisible:false}
execute if score antiNazgard map matches 1 at @s run summon vex ~ ~ ~ {Team:"1",Glowing:1b,HasVisualFire:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:false}],CustomName:'{"text":"Jerry","color":"red"}',CustomNameVisible:false}
execute if score antiNazgard map matches 1 at @s run summon vex ~ ~ ~ {Team:"1",Glowing:1b,HasVisualFire:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:false}],CustomName:'{"text":"Jerry","color":"red"}',CustomNameVisible:false}
execute if score antiNazgard map matches 1 at @s run summon vex ~ ~ ~ {Team:"1",Glowing:1b,HasVisualFire:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:false}],CustomName:'{"text":"Jerry","color":"red"}',CustomNameVisible:false}
execute if score antiNazgard map matches 1 at @s run summon vex ~ ~ ~ {Team:"1",Glowing:1b,HasVisualFire:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:false}],CustomName:'{"text":"Jerry","color":"red"}',CustomNameVisible:false}
execute if score antiNazgard map matches 1 at @s run summon vex ~ ~ ~ {Team:"1",Glowing:1b,HasVisualFire:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:false}],CustomName:'{"text":"Jerry","color":"red"}',CustomNameVisible:false}
# execute unless score end map matches 1 at @s run summon warden ~ ~ ~ {Team:"1",Glowing:1b,HasVisualFire:1b,CustomName:'{"text":"Guardian","color":"red"}',PersistenceRequired:1b,Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}