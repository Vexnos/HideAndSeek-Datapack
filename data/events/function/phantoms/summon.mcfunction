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
execute at @a[gamemode=!spectator] run playsound minecraft:entity.evoker.prepare_summon master @a
scoreboard players remove #phantomTimer phantomTimer 1
execute unless score #phantomTimer phantomTimer matches 0 run schedule function events:phantoms/summon 1s