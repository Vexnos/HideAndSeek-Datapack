# Summon Wardens in Dark Peak
execute in overworld positioned 1 -36 878 run summon warden

# Sounds
execute as @a at @s run playsound minecraft:entity.evoker.prepare_summon master @s

# Timer logic
scoreboard players remove #wardenTimer wardenTimer 1
execute unless score #wardenTimer wardenTimer matches 0 run schedule function events:wardenflurry/summon 1s