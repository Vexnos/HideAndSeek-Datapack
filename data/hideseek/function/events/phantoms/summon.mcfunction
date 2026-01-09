# Summon Phantoms in groups
execute in overworld positioned 1 -20 878 run summon phantom
execute in overworld positioned 1 -20 878 run summon phantom
execute in overworld positioned 1 -20 878 run summon phantom
execute in overworld positioned 1 -20 878 run summon phantom
execute in overworld positioned 1 -20 878 run summon phantom
execute in overworld positioned 1 -20 878 run summon phantom
execute in overworld positioned 1 -20 878 run summon phantom
execute in overworld positioned 1 -20 878 run summon phantom
execute in overworld positioned 1 -20 878 run summon phantom
execute in overworld positioned 1 -20 878 run summon phantom

# Sounds
execute as @a at @s run playsound minecraft:entity.evoker.prepare_summon master @s

# Remove 1 from the timer
scoreboard players remove #phantomTimer phantomTimer 1

# Reschedule the function until the timer expires
execute unless score #phantomTimer phantomTimer matches 0 run schedule function hideseek:events/phantoms/summon 1s