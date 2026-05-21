execute as @a[tag=admin,limit=1] in hideseek:lobby positioned 15 165 73 run place template hideseek:arena_floor_copper_32
schedule function hideseek:lobby/arena_floor/copper/33 5t

# Particles
execute in hideseek:lobby run particle poof 15 167 84 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof 15 167 85 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof 15 167 86 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof 15 167 87 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof 15 167 88 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof 15 167 89 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof 15 167 90 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof 15 167 91 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof 15 167 92 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof 15 167 93 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof 15 167 94 0.1 0.1 0.1 0.5 25 force

# Sounds
execute in hideseek:lobby positioned 15 167 89 run playsound minecraft:block.trial_spawner.close_shutter master @a ~ ~ ~ 100 0
execute in hideseek:lobby positioned 15 167 89 run playsound minecraft:block.vault.place master @a ~ ~ ~ 100 0
execute in hideseek:lobby positioned 15 167 89 run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 100 2