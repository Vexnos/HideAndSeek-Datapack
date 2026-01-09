# Summon Breezes unless on Nazgard or Anti End
execute unless score nazgard Nazgard matches 1 unless score antiend Antiend matches 1 at @a[team=1,tag=!out] run summon breeze ~ ~ ~ {Team:"2",attributes:[{id:"minecraft:max_health",modifiers:[{id:"max_health",amount:1,operation:add_value}]}],Health:1f}

# Summon Blazes on Nazgard and Anti End
execute if score nazgard Nazgard matches 1 at @a[team=1,tag=!out] run summon blaze ~ ~ ~ {Team:"2",attributes:[{id:"minecraft:max_health",modifiers:[{id:"max_health",amount:1,operation:add_value}]}],Health:1f,active_effects:[{id:"minecraft:weakness",amplifier:1,duration:5,show_particles:true}]}
execute if score antiend Antiend matches 1 at @a[team=1,tag=!out] run summon blaze ~ ~ ~ {Team:"2",attributes:[{id:"minecraft:max_health",modifiers:[{id:"max_health",amount:1,operation:add_value}]}],Health:1f,active_effects:[{id:"minecraft:weakness",amplifier:1,duration:5,show_particles:true}]}

# Sounds
execute as @a at @s run playsound minecraft:entity.evoker.prepare_summon master @s

# Remove 1 from the Timer
scoreboard players remove #breezeTimer breezeTimer 1

# Run the function until the timer expires
execute unless score #breezeTimer breezeTimer matches 0 run schedule function hideseek:events/breeze/summon 1s