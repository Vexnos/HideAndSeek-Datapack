execute in hideseek:lobby run fill -4 165 85 4 166 93 minecraft:lava
execute in hideseek:lobby run fill -4 167 85 4 168 93 minecraft:air
execute in hideseek:lobby run particle flame 0 168 89 0.5 0.5 0.5 0.5 150 force
execute in hideseek:lobby run playsound minecraft:item.bucket.fill_lava master @a 0 167 89 100 1
execute in hideseek:lobby run playsound minecraft:block.trial_spawner.close_shutter master @a 0 167 89 100 0
execute in hideseek:lobby run playsound minecraft:entity.evoker.prepare_summon master @a 0 167 89 100 2