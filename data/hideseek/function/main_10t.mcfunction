#
# Description: Main 10 Ticks
# Called by: hideseek:load, THIS
# Entity @s: None
#
# Give event guardians regeneration
effect give @e[type=guardian,tag=event] regeneration infinite 10 true

# Give teleport ability when player uses all shards
execute as @a[scores={shardsUsed=3..},tag=!itemsGiven] run function hideseek:shadowclones/shards

# Give the Seeker Effects on respawn
function hideseek:seeker/seekereffects

# Run the function every 10 ticks
schedule function hideseek:main_10t 10t

# Arena Sound
execute if entity @a[tag=sound] in hideseek:lobby positioned 0 167 89 run playsound minecraft:block.trial_spawner.close_shutter master @a ~ ~ ~ 100 1