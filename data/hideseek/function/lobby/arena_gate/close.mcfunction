execute in hideseek:lobby positioned -3 169 65 run place template hideseek:gate_closed
execute in hideseek:lobby run particle poof -2 170 65 0.1 0.1 0.1 0.25 25 normal
execute in hideseek:lobby run particle poof -1 170 65 0.1 0.1 0.1 0.25 25 normal
execute in hideseek:lobby run particle poof 0 170 65 0.1 0.1 0.1 0.25 25 normal
execute in hideseek:lobby run particle poof 1 170 65 0.1 0.1 0.1 0.25 25 normal
execute in hideseek:lobby run particle poof 2 170 65 0.1 0.1 0.1 0.25 25 normal
execute in hideseek:lobby positioned 0 170 65 run playsound minecraft:block.anvil.land master @a
execute in hideseek:lobby positioned 0 170 65 run playsound minecraft:block.trial_spawner.close_shutter master @a ~ ~ ~ 100 0
execute in hideseek:lobby positioned 0 170 65 run playsound minecraft:block.vault.reject_rewarded_player master @s ~ ~ ~ 100 0