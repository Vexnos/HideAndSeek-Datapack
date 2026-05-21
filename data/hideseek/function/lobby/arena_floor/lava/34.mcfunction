execute as @a[tag=admin,limit=1] in hideseek:lobby positioned 17 165 73 run place template hideseek:arena_floor_lava_34
schedule function hideseek:lobby/arena_floor/lava/finish 5s

# Particles
execute in hideseek:lobby run particle flame 17 167 88 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle flame 17 167 89 0.1 0.1 0.1 0.5 25 force
execute in hideseek:lobby run particle flame 17 167 90 0.1 0.1 0.1 0.5 25 force

# Sounds
execute in hideseek:lobby positioned 17 167 89 run playsound minecraft:block.trial_spawner.close_shutter master @a ~ ~ ~ 100 0
execute in hideseek:lobby positioned 17 167 89 run playsound minecraft:block.vault.place master @a ~ ~ ~ 100 0
execute in hideseek:lobby positioned 17 167 89 run playsound minecraft:item.bucket.fill_lava master @a ~ ~ ~ 100 1
execute in hideseek:lobby positioned 0 167 89 run playsound minecraft:block.trial_spawner.about_to_spawn_item master @a ~ ~ ~ 100 0

tag @a[tag=admin,tag=sound] remove sound