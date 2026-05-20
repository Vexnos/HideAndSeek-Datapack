execute as @a[tag=admin,limit=1] in hideseek:lobby positioned 10 165 73 run place template hideseek:arena_floor_lava_3
schedule function hideseek:lobby/arena_floor/lava/finish 5s

# Particles
execute in hideseek:lobby run particle flame 15 167 84 0.5 0.5 0.5 0.5 25 force
execute in hideseek:lobby run particle flame 15 167 85 0.5 0.5 0.5 0.5 25 force
execute in hideseek:lobby run particle flame 15 167 86 0.5 0.5 0.5 0.5 25 force
execute in hideseek:lobby run particle flame 15 167 87 0.5 0.5 0.5 0.5 25 force
execute in hideseek:lobby run particle flame 15 167 88 0.5 0.5 0.5 0.5 25 force
execute in hideseek:lobby run particle flame 15 167 89 0.5 0.5 0.5 0.5 25 force
execute in hideseek:lobby run particle flame 15 167 90 0.5 0.5 0.5 0.5 25 force
execute in hideseek:lobby run particle flame 15 167 91 0.5 0.5 0.5 0.5 25 force
execute in hideseek:lobby run particle flame 15 167 92 0.5 0.5 0.5 0.5 25 force
execute in hideseek:lobby run particle flame 15 167 93 0.5 0.5 0.5 0.5 25 force
execute in hideseek:lobby run particle flame 15 167 94 0.5 0.5 0.5 0.5 25 force

# Sounds
execute in hideseek:lobby positioned 15 167 89 run playsound minecraft:block.trial_spawner.close_shutter master @a ~ ~ ~ 100 0
execute in hideseek:lobby positioned 15 167 89 run playsound minecraft:block.vault.place master @a ~ ~ ~ 100 0
execute in hideseek:lobby positioned 15 167 89 run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 100 0
execute in hideseek:lobby positioned 0 167 89 run playsound minecraft:block.trial_spawner.about_to_spawn_item master @a ~ ~ ~ 100 0

tag @a[tag=admin,tag=sound] remove sound