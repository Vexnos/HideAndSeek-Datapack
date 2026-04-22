# Titles and Sound
execute if score #countdown countdown matches 0 run title Herobrine title {"text":""}
execute if score #countdown countdown matches 4.. run title @a title {"score":{"name":"#countdown","objective":"countdown"},"color":"dark_green"}
execute if score #countdown countdown matches 3 run title @a title {"score":{"name":"#countdown","objective":"countdown"},"color":"green"}
execute if score #countdown countdown matches 2 run title @a title {"score":{"name":"#countdown","objective":"countdown"},"color":"yellow"}
execute if score #countdown countdown matches 1 run title @a title {"score":{"name":"#countdown","objective":"countdown"},"color":"red"}
execute as @a at @s run playsound minecraft:ui.button.click master @s

# SFX
execute if score #countdown countdown matches 5 as @a at @s run playsound hideseek:roller master @s
execute if score #countdown countdown matches 5 as @a at @s run playsound minecraft:block.trial_spawner.about_to_spawn_item master @s ~ ~ ~ 100 0

# Countdown Logic
execute if score #countdown countdown matches 2.. run schedule function hideseek:events/countdown 1s
execute if score #countdown countdown matches 1 run schedule function hideseek:events/majorevents 1s
scoreboard players remove #countdown countdown 1