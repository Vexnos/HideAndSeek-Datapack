execute as @a[predicate=hideseek:east] positioned 51 170 -50 in hideseek:lobby run playsound minecraft:entity.enderman.teleport master @a
execute as @a[predicate=hideseek:east] positioned 51 170 -50 in hideseek:lobby run particle portal ~ ~ ~ 1 0.8 1 1 50 force
execute as @a[predicate=hideseek:east] in hideseek:lobby run tp @s 51 170 -50