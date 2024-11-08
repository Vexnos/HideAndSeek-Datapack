effect give @s resistance 15 15 true
execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["tray"]}
tag @s add trayaurus
execute in overworld run tp @s 797 21 -1015
execute at @s run playsound minecraft:entity.enderman.teleport master @a
schedule function events:trayaurus/teleportback 10s