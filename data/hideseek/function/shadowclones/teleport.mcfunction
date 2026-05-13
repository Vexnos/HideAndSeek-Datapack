# Particles and Sound at the shadowclone
execute at @e[type=mannequin,tag=tp_to_me,limit=1] run particle poof ~ ~1 ~ 0.1 0.1 0.1 0.3 100 force
execute at @e[type=mannequin,tag=tp_to_me,limit=1] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 100 1

# Particles and sound at the player
execute at @a[tag=shadowclone_teleport] run particle poof ~ ~1 ~ 0.1 0.1 0.1 0.3 100 force
execute at @a[tag=shadowclone_teleport] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 100 1

# Use markers to get the locations of the shadowclone and player
execute at @e[tag=tp_to_me,type=mannequin] run summon marker ~ ~ ~ {Tags:["mswap0"]}
execute at @a[tag=shadowclone_teleport,limit=1] run summon marker ~ ~ ~ {Tags:["mswap1"]}

# Kill the selected shadowclone
kill @e[type=mannequin,tag=tp_to_me,limit=1]

# Teleport the player to where the shadowclone was and summon an armor stand at the player's previous location
execute at @e[tag=mswap0] run tp @a[tag=shadowclone_teleport,limit=1] ~ ~ ~ ~ ~
execute at @e[tag=mswap1] run summon armor_stand ~ ~ ~ {Tags:["dummy"],ShowArms:1b,equipment:{head:{id:"minecraft:leather_helmet"}},DisabledSlots:4144896}

# Kill the swap markers
kill @e[type=marker,tag=mswap0]
kill @e[type=marker,tag=mswap1]

# Remove the teleport tag from the player
tag @e remove shadowclone_teleport