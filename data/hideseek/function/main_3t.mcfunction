#
# Description: Main 10 Ticks
# Called by: hideseek:load, THIS
# Entity @s: None
#
# Run the function every 10 ticks
schedule function hideseek:main_3t 3t

# Arena Sound
execute if entity @a[tag=sound] in hideseek:lobby positioned 0 167 89 run playsound minecraft:block.trial_spawner.hit master @a ~ ~ ~ 100 0