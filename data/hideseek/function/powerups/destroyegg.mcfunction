# Revoke advancement so the function doesn't run repeatedly
advancement revoke @s only hideseek:powerups/destroyegg

# Kill Eggs and Tridents
kill @e[type=egg]
kill @e[type=trident]

# Tp the Seeker back to Spawn
tp @s @e[tag=start,limit=1]

# Sounds
execute at @s run playsound minecraft:entity.wither.death master @a ~ ~ ~ 100 2