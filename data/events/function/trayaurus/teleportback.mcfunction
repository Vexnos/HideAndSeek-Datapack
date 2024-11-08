tp @a[tag=trayaurus] @e[tag=tray,limit=1]
effect clear @a[tag=trayaurus] resistance
execute at @a[tag=trayaurus] run playsound minecraft:entity.enderman.teleport master @a
kill @e[tag=tray]
tag @a[tag=trayaurus] remove trayaurus