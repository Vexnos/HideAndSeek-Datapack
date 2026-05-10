# Set all Maps to be unselected
# function hideseek:teleport/mapresets

# Back to Lobby Message
# title @a actionbar {"text":"Back to Lobby","color":"green"}

# Reset Worldborder
# execute in overworld run worldborder center 0 0
# execute in overworld run worldborder set 59999968

# Teleports
# execute in overworld run tp @a -1453 29 -727
# execute in overworld run spawnpoint @a -1453 207 -699

# Particles, Effects and Sounds
# execute as @a at @s run particle glow ~ ~1 ~ 0.5 0.5 0.5 2 500 force
# execute as @a at @s run playsound entity.allay.item_given master @s ~ ~ ~ 100 0
# execute as @a at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 100 0
# effect give @a blindness 1 0 true

# Set Weather to Clear
# weather clear

# Set Time
# time set 7000

# Set Timer max to default
# bossbar set minecraft:timer max 600
# bossbar set minecraft:timer style notched_10

# Clear Effects and Inventories
# effect clear @a
# clear @a
function hideseek:teleport/gotolobby