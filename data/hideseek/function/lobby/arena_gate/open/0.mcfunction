execute in hideseek:lobby positioned -3 170 65 run place template hideseek:gate_open_0
schedule function hideseek:lobby/arena_gate/open/1 1t

execute in hideseek:lobby run particle poof -2 170 65 0.1 0.1 0.1 0.25 25 normal
execute in hideseek:lobby run particle poof -1 170 65 0.1 0.1 0.1 0.25 25 normal
execute in hideseek:lobby run particle poof 0 170 65 0.1 0.1 0.1 0.25 25 normal
execute in hideseek:lobby run particle poof 1 170 65 0.1 0.1 0.1 0.25 25 normal
execute in hideseek:lobby run particle poof 2 170 65 0.1 0.1 0.1 0.25 25 normal
execute in hideseek:lobby positioned 0 170 65 run playsound minecraft:block.trial_spawner.ambient_ominous master @a
execute in hideseek:lobby positioned 0 170 65 run playsound minecraft:block.trial_spawner.open_shutter master @a ~ ~ ~ 100 0

execute in hideseek:lobby run playsound minecraft:block.trial_spawner.hit block @s 0 170 65 100 1