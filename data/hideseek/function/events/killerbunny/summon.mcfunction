# Summon Phantoms in groups
execute at @e[tag=start,limit=1] run summon rabbit ~ ~ ~ {RabbitType:99,PersistenceRequired:1b,active_effects:[{id:resistance,amplifier:255,duration:-1,show_particles:false}],attributes:[{base:20,id:"minecraft:attack_damage"},{base:100,id:"minecraft:follow_range"},{base:1.0,id:"minecraft:movement_speed"}],CustomName:{text:"Caerbannog",color:"red"}}
execute at @e[tag=start,limit=1] run summon rabbit ~ ~ ~ {RabbitType:99,PersistenceRequired:1b,active_effects:[{id:resistance,amplifier:255,duration:-1,show_particles:false}],attributes:[{base:20,id:"minecraft:attack_damage"},{base:100,id:"minecraft:follow_range"},{base:1.0,id:"minecraft:movement_speed"}],CustomName:{text:"Caerbannog",color:"red"}}
execute at @e[tag=start,limit=1] run summon rabbit ~ ~ ~ {RabbitType:99,PersistenceRequired:1b,active_effects:[{id:resistance,amplifier:255,duration:-1,show_particles:false}],attributes:[{base:20,id:"minecraft:attack_damage"},{base:100,id:"minecraft:follow_range"},{base:1.0,id:"minecraft:movement_speed"}],CustomName:{text:"Caerbannog",color:"red"}}
execute at @e[tag=start,limit=1] run summon rabbit ~ ~ ~ {RabbitType:99,PersistenceRequired:1b,active_effects:[{id:resistance,amplifier:255,duration:-1,show_particles:false}],attributes:[{base:20,id:"minecraft:attack_damage"},{base:100,id:"minecraft:follow_range"},{base:1.0,id:"minecraft:movement_speed"}],CustomName:{text:"Caerbannog",color:"red"}}
execute at @e[tag=start,limit=1] run summon rabbit ~ ~ ~ {RabbitType:99,PersistenceRequired:1b,active_effects:[{id:resistance,amplifier:255,duration:-1,show_particles:false}],attributes:[{base:20,id:"minecraft:attack_damage"},{base:100,id:"minecraft:follow_range"},{base:1.0,id:"minecraft:movement_speed"}],CustomName:{text:"Caerbannog",color:"red"}}
execute at @e[tag=start,limit=1] run summon rabbit ~ ~ ~ {RabbitType:99,PersistenceRequired:1b,active_effects:[{id:resistance,amplifier:255,duration:-1,show_particles:false}],attributes:[{base:20,id:"minecraft:attack_damage"},{base:100,id:"minecraft:follow_range"},{base:1.0,id:"minecraft:movement_speed"}],CustomName:{text:"Caerbannog",color:"red"}}
execute at @e[tag=start,limit=1] run summon rabbit ~ ~ ~ {RabbitType:99,PersistenceRequired:1b,active_effects:[{id:resistance,amplifier:255,duration:-1,show_particles:false}],attributes:[{base:20,id:"minecraft:attack_damage"},{base:100,id:"minecraft:follow_range"},{base:1.0,id:"minecraft:movement_speed"}],CustomName:{text:"Caerbannog",color:"red"}}
execute at @e[tag=start,limit=1] run summon rabbit ~ ~ ~ {RabbitType:99,PersistenceRequired:1b,active_effects:[{id:resistance,amplifier:255,duration:-1,show_particles:false}],attributes:[{base:20,id:"minecraft:attack_damage"},{base:100,id:"minecraft:follow_range"},{base:1.0,id:"minecraft:movement_speed"}],CustomName:{text:"Caerbannog",color:"red"}}
execute at @e[tag=start,limit=1] run summon rabbit ~ ~ ~ {RabbitType:99,PersistenceRequired:1b,active_effects:[{id:resistance,amplifier:255,duration:-1,show_particles:false}],attributes:[{base:20,id:"minecraft:attack_damage"},{base:100,id:"minecraft:follow_range"},{base:1.0,id:"minecraft:movement_speed"}],CustomName:{text:"Caerbannog",color:"red"}}
execute at @e[tag=start,limit=1] run summon rabbit ~ ~ ~ {RabbitType:99,PersistenceRequired:1b,active_effects:[{id:resistance,amplifier:255,duration:-1,show_particles:false}],attributes:[{base:20,id:"minecraft:attack_damage"},{base:100,id:"minecraft:follow_range"},{base:1.0,id:"minecraft:movement_speed"}],CustomName:{text:"Caerbannog",color:"red"}}

execute if score bunnies time matches 0 run effect give @e[type=rabbit,nbt={RabbitType:99}] jump_boost infinite 3 true

# Sounds
execute as @a at @s run playsound minecraft:entity.evoker.prepare_summon master @s

# Remove 1 from the timer
scoreboard players remove bunnies time 1

# Reschedule the function until the timer expires
execute unless score bunnies time matches 0 run schedule function hideseek:events/killerbunny/summon 1s