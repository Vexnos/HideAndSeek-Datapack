execute in hideseek:lobby positioned -4 165 85 run place template hideseek:arena_podium
execute in hideseek:lobby run particle poof 0 168 89 0.5 0.5 0.5 0.5 50 force
execute in hideseek:lobby run playsound minecraft:block.lava.extinguish master @a 0 167 89 100 1
execute in hideseek:lobby run playsound minecraft:block.trial_spawner.close_shutter master @a 0 167 89 100 0