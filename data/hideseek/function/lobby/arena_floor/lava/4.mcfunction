execute as @a[tag=admin,limit=1] in hideseek:lobby positioned -13 165 73 run place template hideseek:arena_floor_lava_4
schedule function hideseek:lobby/arena_floor/lava/5 5t

# Particles
execute in hideseek:lobby run particle flame -13 167 80 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle flame -13 167 81 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle flame -13 167 82 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle flame -13 167 83 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle flame -13 167 84 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle flame -13 167 85 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle flame -13 167 86 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle flame -13 167 87 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle flame -13 167 88 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle flame -13 167 89 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle flame -13 167 90 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle flame -13 167 91 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle flame -13 167 92 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle flame -13 167 93 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle flame -13 167 94 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle flame -13 167 95 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle flame -13 167 96 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle flame -13 167 97 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle flame -13 167 98 0.1 0.1 0.1 0.5 25 force

# Sounds
execute in hideseek:lobby positioned -13 167 89 run playsound minecraft:block.trial_spawner.close_shutter master @a ~ ~ ~ 100 0
execute in hideseek:lobby positioned -13 167 89 run playsound minecraft:block.vault.place master @a ~ ~ ~ 100 0
execute in hideseek:lobby positioned -13 167 89 run playsound minecraft:item.bucket.fill_lava master @a ~ ~ ~ 100 1