# Summon Breezes unless on Nazgard or Anti End
execute unless score nazgard map matches 1 unless score antiEnd map matches 1 at @a[team=1,tag=!out] run summon breeze ~ ~ ~ {Team:"2",attributes:[{id:"minecraft:max_health",modifiers:[{id:"max_health",amount:1,operation:add_value}]}],Health:1f}

# Summon Blazes on Nazgard and Anti End
execute if score nazgard map matches 1 at @a[team=1,tag=!out] run summon blaze ~ ~ ~ {Team:"2",attributes:[{id:"minecraft:max_health",modifiers:[{id:"max_health",amount:1,operation:add_value}]}],Health:1f,active_effects:[{id:"minecraft:weakness",amplifier:1,duration:5,show_particles:true}]}
execute if score antiEnd map matches 1 at @a[team=1,tag=!out] run summon blaze ~ ~ ~ {Team:"2",attributes:[{id:"minecraft:max_health",modifiers:[{id:"max_health",amount:1,operation:add_value}]}],Health:1f,active_effects:[{id:"minecraft:weakness",amplifier:1,duration:5,show_particles:true}]}

# Sounds
execute as @a at @s run playsound minecraft:entity.evoker.prepare_summon master @s

# Remove 1 from the Timer
scoreboard players remove breezes time 1

# Run the function until the timer expires
execute unless score breezes time matches 0 run schedule function hideseek:events/breeze/summon 1s