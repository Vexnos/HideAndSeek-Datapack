execute as @a[predicate=hideseek:dark] positioned 0 130 -38 in hideseek:lobby run playsound minecraft:entity.enderman.teleport master @a
execute as @a[predicate=hideseek:dark] positioned 0 130 -38 in hideseek:lobby run particle portal ~ ~ ~ 1 0.8 1 1 50 force
execute as @a[predicate=hideseek:dark] in hideseek:lobby run tp @s 0 130 -38