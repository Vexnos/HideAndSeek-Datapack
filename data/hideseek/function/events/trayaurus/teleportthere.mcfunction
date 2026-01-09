# Give resistance to the player to stop them dying at Trayaurus
effect give @s resistance 15 15 true

# Summon an Armor Stand so we know where to teleport them back to
execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["tray"]}

# Add a tag to the player
tag @s add trayaurus

# Teleport to Trayaurus
execute in overworld run tp @s 797 21 -1015

# Sounds
execute at @s run playsound minecraft:entity.enderman.teleport master @a

# Schedule the next function
schedule function hideseek:events/trayaurus/teleportback 10s