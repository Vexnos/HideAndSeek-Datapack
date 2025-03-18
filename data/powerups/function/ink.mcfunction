# Revoke advancement so the function doesn't run repeatedly
advancement revoke @s only powerups:ink

# Ink Bomb (Area Effect Cloud). Gives Blindness to players inside the cloud
execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:{type:"squid_ink"},ReapplicationDelay:400,Radius:3f,RadiusPerTick:0.01f,RadiusOnUse:0f,Duration:200,DurationOnUse:0f,WaitTime:0,potion_contents:{custom_effects:[{id:"minecraft:blindness",amplifier:0,duration:200,show_particles:0b,show_icon:1b}]}}

# Invisibility for Hider using this ability
effect give @s invisibility 10 0 true

# Sound
execute at @s run playsound minecraft:entity.squid.squirt master @a ~ ~ ~ 100 1