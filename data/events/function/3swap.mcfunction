# Pick Players
tag @a[team=1,sort=random,limit=1,tag=!out] add swap1
tag @a[team=1,sort=random,tag=!swap1,limit=1,tag=!out] add swap2
tag @a[team=1,sort=random,tag=!swap1,tag=!swap2,limit=1,tag=!out] add swap3
execute at @a[tag=swap1,limit=1] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["aswap1"],NoGravity:1b}
execute at @a[tag=swap2,limit=1] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["aswap2"],NoGravity:1b}
execute at @a[tag=swap3,limit=1] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["aswap3"],NoGravity:1b}
tp @a[tag=swap1] @e[tag=aswap2,limit=1]
tp @a[tag=swap2] @e[tag=aswap3,limit=1]
tp @a[tag=swap3] @e[tag=aswap1,limit=1]

# Sounds
execute at @a[tag=swap1] run playsound minecraft:entity.enderman.teleport master @a
execute at @a[tag=swap2] run playsound minecraft:entity.enderman.teleport master @a
execute at @a[tag=swap3] run playsound minecraft:entity.enderman.teleport master @a

# Titles
tellraw @a[tag=swap1] {"text":"You have been swapped!","color":"blue"}
tellraw @a[tag=swap2] {"text":"You have been swapped!","color":"blue"}
tellraw @a[tag=swap3] {"text":"You have been swapped!","color":"blue"}

# Remove Tags and Armor Stands
tag @a remove swap1
tag @a remove swap2
tag @a remove swap3
kill @e[tag=aswap1]
kill @e[tag=aswap2]
kill @e[tag=aswap3]