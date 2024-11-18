advancement revoke @s only powerups:radar
execute if score #radarEnabled radarEnabled matches 1 if score #game gameRunning matches 1 as @a[team=2] run function hideseek:radar
execute at @s run playsound minecraft:block.bell.resonate master @a ~ ~ ~ 100 2