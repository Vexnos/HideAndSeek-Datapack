# Summon Wardens in Dark Peak
execute in overworld at @e[tag=start,limit=1] run summon warden

# Sounds
execute as @a at @s run playsound minecraft:entity.evoker.prepare_summon master @s

# Timer logic
scoreboard players remove wardens time 1
execute unless score wardens time matches 0 run schedule function hideseek:events/wardenflurry/summon 1s