# Revoke advancement so the function doesn't run repeatedly
advancement revoke @s only hideseek:powerups/radar

# Run the Radar Function
execute if score radar settings matches 1 if score gameRunning settings matches 1 as @a[team=2] run function hideseek:radar

# Marco Polo (Who's the closest Hider)
tellraw @a [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> Marco!"}]
execute at @s run tellraw @a [{"text":"<","color":"white"},{"selector":"@a[team=1,limit=1,gamemode=adventure,sort=nearest]"},{"text":"> Polo!"}]

# Give a new radar
give @s nether_star[consumable={consume_seconds:0.05},custom_name={"text":"Radar","color":"green","italic":false},max_stack_size=2,use_cooldown={seconds:5,cooldown_group:"radar"}]

# Sound
execute at @s run execute as @a[team=1,tag=!out,sort=nearest,limit=1] at @s run playsound minecraft:entity.guardian.death master @a ~ ~ ~ 100 0