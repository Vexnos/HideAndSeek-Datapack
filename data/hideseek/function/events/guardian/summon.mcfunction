# Summon Guardians on Bats unless in Pavlopetri
execute unless score pavlopetri Pavlopetri matches 1 at @a[gamemode=!spectator] run summon bat ~ ~ ~ {attributes:[{id:"minecraft:attack_damage",modifiers:[{id:"attack_damage",amount:-10,operation:add_value}]}],active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:false}],Team:"4",Silent:1b,Passengers:[{id:guardian,Tags:["event"],Team:"4",active_effects:[{id:"glowing",amplifier:0,duration:2400,show_particles:false}],Health:3f,attributes:[{id:"minecraft:max_health",modifiers:[{id:"max_health",amount:3,operation:add_value}]}]}]}

# Summon Guardians without Bats in Pavlopetri
execute if score pavlopetri Pavlopetri matches 1 at @a[gamemode=!spectator] run summon guardian ~ ~ ~ {Tags:["event"],Team:"4",active_effects:[{id:"glowing",amplifier:0,duration:2400,show_particles:false}],Health:3f,attributes:[{id:"minecraft:max_health",modifiers:[{id:"max_health",amount:3,operation:add_value}]}]}

# Sounds
execute as @a at @s run playsound minecraft:entity.evoker.prepare_summon master @s

# Remove 1 from the Guardian Timer
scoreboard players remove #guardianTimer guardianTimer 1

# Run the function until the timer expires
execute unless score #guardianTimer guardianTimer matches 0 run schedule function hideseek:events/guardian/summon 1s