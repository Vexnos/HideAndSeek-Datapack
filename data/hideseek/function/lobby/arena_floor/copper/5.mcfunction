execute as @a[tag=admin,limit=1] in hideseek:lobby positioned -12 165 73 run place template hideseek:arena_floor_copper_5
schedule function hideseek:lobby/arena_floor/copper/6 5t

# Particles
execute in hideseek:lobby run particle poof -12 167 79 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof -12 167 80 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof -12 167 81 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof -12 167 82 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof -12 167 83 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof -12 167 84 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof -12 167 85 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof -12 167 86 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof -12 167 87 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof -12 167 88 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof -12 167 89 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof -12 167 90 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof -12 167 91 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof -12 167 92 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof -12 167 93 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof -12 167 94 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof -12 167 95 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof -12 167 96 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof -12 167 97 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof -12 167 98 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle poof -12 167 99 0.1 0.1 0.1 0.5 25 force

# Sounds
execute in hideseek:lobby positioned -12 167 89 run playsound minecraft:block.trial_spawner.close_shutter master @a ~ ~ ~ 100 0
execute in hideseek:lobby positioned -12 167 89 run playsound minecraft:block.vault.place master @a ~ ~ ~ 100 0
execute in hideseek:lobby positioned -12 167 89 run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 100 2