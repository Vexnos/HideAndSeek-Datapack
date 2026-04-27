# Revoke advancement so the function doesn't run repeatedly
advancement revoke @s only hideseek:powerups/destroyegg

# Kill Eggs and Tridents
kill @e[type=egg]
kill @e[type=trident]

# Tp the Seeker back to Spawn
tp @s @e[tag=start,limit=1]

# Sounds
execute at @s run playsound minecraft:entity.wither.death master @a ~ ~ ~ 100 2

# Replace Heavy Core
give @s heavy_core[custom_name={"text":"Back to Spawn","color":"red","italic":false},consumable={consume_seconds:0.05},max_stack_size=2,enchantment_glint_override=true,use_cooldown={seconds:1,cooldown_group:"heavy_core"}]