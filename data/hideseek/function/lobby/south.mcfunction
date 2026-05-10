execute as @a[predicate=hideseek:south] positioned 0 170 -101 in hideseek:lobby run playsound minecraft:entity.enderman.teleport master @a
execute as @a[predicate=hideseek:south] positioned 0 170 -101 in hideseek:lobby run particle portal ~ ~ ~ 1 0.8 1 1 50 force
execute as @a[predicate=hideseek:south] in hideseek:lobby run tp @s 0 170 -101