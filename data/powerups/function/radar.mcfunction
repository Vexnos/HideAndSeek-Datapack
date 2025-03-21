# Revoke advancement so the function doesn't run repeatedly
advancement revoke @s only powerups:radar

# Run the Radar Function
execute if score #radarEnabled radarEnabled matches 1 if score #game gameRunning matches 1 as @a[team=2] run function hideseek:radar

# Marco Polo (Who's the closest Hider)
tellraw @a [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> Marco!"}]
execute at @s run tellraw @a [{"text":"<","color":"white"},{"selector":"@a[team=1,limit=1,gamemode=adventure,sort=nearest]"},{"text":"> Polo!"}]

# Sound
execute at @s run playsound minecraft:block.bell.resonate master @a ~ ~ ~ 100 2