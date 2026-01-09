# Disable Teleports
scoreboard players set #mountsEnabled mountsEnabled 0

# Titles
title @a title {"text":"Teleports Disabled!","color":"dark_purple"}

# Sounds
execute as @a at @s run playsound minecraft:entity.elder_guardian.curse master @s
execute as @a at @s run playsound minecraft:block.glass.break master @s

# Enable the Teleports in 20 seconds
schedule function hideseek:events/disableteleports/enable 20s