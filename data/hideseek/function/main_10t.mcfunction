effect give @e[type=guardian] regeneration infinite 10 true
execute if score #radarEnabled radarEnabled matches 1 if score #game gameRunning matches 1 as @a[team=2] run function hideseek:radar
execute if score #game gameRunning matches 1 run bossbar set timer visible true 
execute if score #game gameRunning matches 0 run bossbar set timer visible false
schedule function hideseek:main_10t 10t