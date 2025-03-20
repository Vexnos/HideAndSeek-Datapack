tp @a[tag=trayaurus] @e[tag=tray,limit=1]
effect clear @a[tag=trayaurus] resistance
execute as @a[tag=trayaurus] at @s run playsound minecraft:entity.enderman.teleport master @s
kill @e[tag=tray]
tag @a[tag=trayaurus] remove trayaurus