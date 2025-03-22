# Pick Players
tag @a[team=1,sort=random,limit=1,tag=!out] add swap1
tag @a[team=1,sort=random,tag=!swap1,limit=1,tag=!out] add swap2
tag @a[team=1,sort=random,tag=!swap1,tag=!swap2,limit=1,tag=!out] add swap3
tag @a[team=1,sort=random,tag=!swap1,tag=!swap2,tag=!swap3,limit=1,tag=!out] add swap4

# Summon armor stands
execute at @a[tag=swap1,limit=1] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["aswap1"],NoGravity:1b}
execute at @a[tag=swap2,limit=1] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["aswap2"],NoGravity:1b}
execute at @a[tag=swap3,limit=1] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["aswap3"],NoGravity:1b}
execute at @a[tag=swap4,limit=1] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["aswap4"],NoGravity:1b}

# Swap
tp @a[tag=swap1] @e[tag=aswap2,limit=1]
tp @a[tag=swap2] @e[tag=aswap3,limit=1]
tp @a[tag=swap3] @e[tag=aswap4,limit=1]
tp @a[tag=swap4] @e[tag=aswap1,limit=1]

# Sounds
execute as @a[tag=swap1] at @s run playsound minecraft:entity.enderman.teleport master @s
execute as @a[tag=swap2] at @s run playsound minecraft:entity.enderman.teleport master @s
execute as @a[tag=swap3] at @s run playsound minecraft:entity.enderman.teleport master @s
execute as @a[tag=swap4] at @s run playsound minecraft:entity.enderman.teleport master @s

# Titles
tellraw @a[tag=swap1] {"text":"You have been swapped!","color":"blue"}
tellraw @a[tag=swap2] {"text":"You have been swapped!","color":"blue"}
tellraw @a[tag=swap3] {"text":"You have been swapped!","color":"blue"}
tellraw @a[tag=swap4] {"text":"You have been swapped!","color":"blue"}

# Remove Tags and Armor Stands
tag @a remove swap1
tag @a remove swap2
tag @a remove swap3
tag @a remove swap4
kill @e[tag=aswap1]
kill @e[tag=aswap2]
kill @e[tag=aswap3]
kill @e[tag=aswap4]