execute in hideseek:lobby positioned -4 165 85 run place template hideseek:arena_podium
execute in hideseek:lobby run particle poof 0 168 89 0.5 0.5 0.5 0.5 150 force
execute in hideseek:lobby run playsound minecraft:block.lava.extinguish master @a 0 167 89 100 1
execute in hideseek:lobby run playsound minecraft:block.trial_spawner.close_shutter master @a 0 167 89 100 0
execute in hideseek:lobby run playsound minecraft:entity.evoker.prepare_attack master @a 0 167 89 100 2
execute in hideseek:lobby run playsound minecraft:entity.allay.ambient_without_item master @a 0 167 89 100 2